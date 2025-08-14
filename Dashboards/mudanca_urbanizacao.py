import marimo

__generated_with = "0.14.17"
app = marimo.App(width="medium")


@app.cell
def _():
    import marimo as mo
    import numpy as np
    import pandas as pd
    from owslib.wcs import WebCoverageService
    import requests
    import geojson
    import rasterio
    import geopandas as gpd
    import matplotlib.pyplot as plt
    from rasterstats import zonal_stats
    from matplotlib.colors import ListedColormap, BoundaryNorm
    import requests
    import xml.etree.ElementTree as ET
    return ET, geojson, gpd, mo, requests


@app.cell
def _(geojson, gpd, requests):
    # Parâmetros para conectar com a camada vetorial
    mun_url = "https://info.dengue.mat.br/geoserver/wfs"

    params_AML = dict(
        service="WFS",
        version="2.0.0",
        request="GetFeature",
        typeName="AP_subdistritos_CD2022", # usando camada de subdistritos, pois municípios na Amazônia são gigantes
        outputFormat="json",
    )

    # Fazendo o request
    r_AML = requests.get(mun_url, params=params_AML)

    # Baixando e carregando a camada
    municipios = gpd.GeoDataFrame.from_features(geojson.loads(r_AML.content), crs="EPSG:4674")

    return (municipios,)


@app.cell
def _(mo, municipios):
    municipios_DD = mo.ui.dropdown(options=municipios.NM_DIST.unique(), value="Oiapoque")
    municipios_DD
    return (municipios_DD,)


@app.cell
def _(municipios, municipios_DD):
    municipio_bbox = municipios[municipios.NM_DIST==municipios_DD.value].total_bounds
    return (municipio_bbox,)


@app.cell
def _(mo, municipio_bbox, municipios_DD):
    mo.md(f"""Hello, **{municipios_DD.value}**, your bounding box is {municipio_bbox}""")
    return


@app.cell
def _(ET, requests):
    def get_native_pixel_dims(wcs_url, wcs_version, coverage_id):
        global native_width, native_height
        # Monta a URL para o DescribeCoverage (sem espaços, com os parâmetros necessários)
        describe_url = (f"{wcs_url}?service=WCS&version={wcs_version}&request=DescribeCoverage&coverage={coverage_id}")
        r_describe = requests.get(describe_url)
        if r_describe.status_code != 200:
            raise Exception(f"Erro no DescribeCoverage: {r_describe.status_code}")
        # Parseia o XML da resposta
        root = ET.fromstring(r_describe.content)
        # Definir os namespaces – pode ser necessário ajustar se o XML usar outros valores
        ns = {
            "wcs": "http://www.opengis.net/wcs",
            "gml": "http://www.opengis.net/gml"
        }
        # Procura o elemento GridEnvelope na resposta (normalmente dentro de CoverageDescription)
        grid_env = root.find(".//gml:GridEnvelope", ns)
        if grid_env is None:
            raise Exception("Nenhum elemento <gml:GridEnvelope> encontrado no DescribeCoverage.")
        low_elem = grid_env.find("gml:low", ns)
        high_elem = grid_env.find("gml:high", ns)
        if low_elem is None or high_elem is None:
            raise Exception("Elementos <gml:low> ou <gml:high> não foram encontrados no GridEnvelope.")
        # Os valores geralmente vêm como uma string com dois números separados por espaço
        low_vals = list(map(int, low_elem.text.split()))
        high_vals = list(map(int, high_elem.text.split()))
        native_width = high_vals[0] - low_vals[0] + 1
        native_height = high_vals[1] - low_vals[1] + 1
        return (native_width, native_height)
    return get_native_pixel_dims, native_height, native_width


@app.cell
def _(get_native_pixel_dims, native_height, native_width):
    # Parâmetros para o WCS e a cobertura
    wcs_url = "https://info.dengue.mat.br/geoserver/wcs"
    wcs_version = "1.0.0"
    coverage_id = "brasil_uso_cob:mapbiomas_brasil_coverage_2008"

    n_width, n_height = get_native_pixel_dims(wcs_url, wcs_version, coverage_id)
    print("Dimensões nativas extraídas (width x height):", native_width, "x", native_height)
    return n_height, n_width


@app.cell
def _():
    def calc_bbox_pixelsize(bbox, native_width, native_height):
        """
        Calcula o tamanho em pixeis da caixa delimitadora com base nas dimensões nativas.
        """
        # Calcula a largura e altura do recorte
        res_x = (bbox[2] - bbox[0]) / native_width
        res_y = (bbox[3] - bbox[1]) / native_height
        # xmin,  ymin, xmax, ymax = get_municipio_bounds()
        return res_x, res_y

    def get_crop_pixelbbox(bbox, native_width, native_height):
        # Definir a bbox do recorte (por exemplo, uma região de interesse)
        crop_bbox = [float(i) for i in bbox]
        # print(crop_bbox)

        res_x, res_y = calc_bbox_pixelsize(crop_bbox, native_width, native_height)
        # print(res_x, res_y)
        # Calcular dimensões do recorte em pixels
        crop_width_pixels = int(round((crop_bbox[2] - crop_bbox[0]) / res_x))
        crop_height_pixels = int(round((crop_bbox[3] - crop_bbox[1]) / res_y))

        return crop_width_pixels, crop_height_pixels
    return (get_crop_pixelbbox,)


@app.cell
def _(get_crop_pixelbbox, municipio_bbox, n_height, n_width):
    cwp, chp = get_crop_pixelbbox(municipio_bbox, n_width, n_height)
    return


@app.cell
def _(mo):
    mo.md(r"""## Coverage Image""")
    return


@app.cell
def _(mo):
    cover_id = "amazonia_terraclass:terraclass_AMZ.2008.M"
    crs = "EPSG:4674"
    output_format = "image/geotiff"
    cover_DD = mo.ui.dropdown(options=[f"amazonia_terraclass:terraclass_AMZ.{y}.M" for y in range(2008,2023)], value="amazonia_terraclass:terraclass_AMZ.2008.M")
    return (cover_DD,)


@app.cell
def _(cover_DD):
    cover_DD
    return


app._unparsable_cell(
    r"""
    def download_coverage():

        wcs = WebCoverageService(wcs_url, version=wcs_version, timeout=None)
        if not os.path.exists(cover_DD.value):
            # Executa a requisição para obter a cobertura
            response = wcs.getCoverage(
                identifier=cover_DD.value,
                format=output_format,
                crs=crs,
                bbox=tuple(float(i) for i in municipio_bbox),#(-51.855426, 3.17639, -51.356847, 4.394141), # não consigo usar o objeto crop_bbox, por isso o hardcoding
                # bbox=(-52.7506, 3.6626, -51.7776, 4.0039), # zoom na área urbana do Oiapoque
                width=cwp,
                height=chp,
                timeout=None
            )
            # cover = response.read()
            with open(f'{cover_DD.value}.tif', 'wb') as f:
                f.write(response.read())
        else:
        
        # return cover
    """,
    name="_"
)


@app.cell
def _(download_coverage):
    cover = download_coverage()
    cover
    return


@app.cell
def _():
    return


if __name__ == "__main__":
    app.run()
