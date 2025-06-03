import marimo

__generated_with = "0.13.15"
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
    from io import BytesIO
    from mosqgeoserver import (get_native_pixel_dims, 
                                calc_bbox_pixelsize, 
                                get_crop_pixelbbox, 
                                calc_resolution_deg_by_pixel
                                )
    return (
        BytesIO,
        WebCoverageService,
        calc_resolution_deg_by_pixel,
        geojson,
        get_crop_pixelbbox,
        get_native_pixel_dims,
        gpd,
        mo,
        plt,
        rasterio,
        requests,
    )


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
    selected_mun = municipios[municipios.NM_DIST==municipios_DD.value]
    municipio_bbox = selected_mun.total_bounds
    return municipio_bbox, selected_mun


@app.cell
def _(mo, municipio_bbox, municipios_DD):
    mo.md(
        f"""
    Hello, **{municipios_DD.value}**, your bounding box is {municipio_bbox}

    ## Map
    """
    )
    return


@app.cell
def _(selected_mun):
    selected_mun.plot()
    return


@app.cell
def _(get_native_pixel_dims):
    # Parâmetros para o WCS e a cobertura
    wcs_url = "https://info.dengue.mat.br/geoserver/wcs"
    wcs_version = "1.0.0"
    coverage_id = "brasil_uso_cob:mapbiomas_brasil_coverage_2008"
    # get native pixel dimentions for the image
    n_width, n_height = get_native_pixel_dims(wcs_url, wcs_version, coverage_id)
    print("Dimensões nativas extraídas (width x height):", n_width, "x", n_height)
    return coverage_id, n_height, n_width, wcs_url, wcs_version


@app.cell
def _(mo):
    mo.md(r"""## Coverage Image""")
    return


@app.cell
def _(calc_resolution_deg_by_pixel, coverage_id, mo, n_height, n_width):
    # Bounding box do Brazil
    original_bbox = (-74.0, -33.8, -34.8, 6.0)
    res_x, res_y = calc_resolution_deg_by_pixel(original_bbox, n_width, n_height)
    print(res_x,res_y)
    cover_id = "amazonia_terraclass:terraclass_AMZ.2008.M"
    crs = "EPSG:4674"
    output_format = "image/geotiff"
    cover_DD = mo.ui.dropdown(options=[f"brasil_uso_cob:mapbiomas_brasil_coverage_{y}" for y in range(2008,2023)], value=coverage_id)
    return cover_DD, crs, original_bbox, output_format


@app.cell
def _(get_crop_pixelbbox, municipio_bbox, n_height, n_width, original_bbox):
    cwp, chp = get_crop_pixelbbox(original_bbox, municipio_bbox, n_width, n_height)
    print(cwp, chp)
    return chp, cwp


@app.cell
def _(cover_DD):
    cover_DD
    return


@app.cell
def _(
    BytesIO,
    WebCoverageService,
    chp,
    crs,
    cwp,
    mo,
    municipio_bbox,
    output_format,
    wcs_url,
    wcs_version,
):
    @mo.cache
    def download_coverage(image_name):

        wcs = WebCoverageService(wcs_url, version=wcs_version, timeout=None)

        # Executa a requisição para obter a cobertura
        response = wcs.getCoverage(
            identifier=image_name,
            format=output_format,
            crs=crs,
            bbox=tuple(float(i) for i in municipio_bbox),#(-51.855426, 3.17639, -51.356847, 4.394141), # não consigo usar o objeto crop_bbox, por isso o hardcoding
            # bbox=(-52.7506, 3.6626, -51.7776, 4.0039), # zoom na área urbana do Oiapoque
            width=cwp,
            height=chp,
            timeout=None
        )
        cover = BytesIO(response.read())
        return cover
    return (download_coverage,)


@app.cell
def _(chp, cover_DD, cwp, download_coverage, plt, rasterio):
    coverage = rasterio.open(download_coverage(cover_DD.value)).read()
    plt.imshow(coverage.reshape(chp,cwp))
    return


@app.cell
def _():
    return


if __name__ == "__main__":
    app.run()
