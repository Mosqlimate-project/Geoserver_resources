import geopandas as gpd
import numpy as np
import pandas as pd
from owslib.wcs import WebCoverageService
import requests
import geojson
import rasterio
import geopandas as gpd
from rasterio.plot import show
import matplotlib.pyplot as plt
import matplotlib.lines as mlines
import matplotlib.colors as mcolors
import matplotlib.patches as mpatches
from rasterstats import zonal_stats
from io import BytesIO
from shapely.geometry import box
from matplotlib.colors import ListedColormap, BoundaryNorm
import requests
import xml.etree.ElementTree as ET
from typing import Tuple, Optional

# Definir os namespaces – pode ser necessário ajustar se o XML usar outros valores
ns = {
    "wcs": "http://www.opengis.net/wcs",
    "gml": "http://www.opengis.net/gml"
}

def get_native_pixel_dims(wcs_url, wcs_version, coverage_id):
    # Monta a URL para o DescribeCoverage (sem espaços, com os parâmetros necessários)
    describe_url = (f"{wcs_url}?service=WCS&version={wcs_version}&request=DescribeCoverage&coverage={coverage_id}")
    r_describe = requests.get(describe_url)
    if r_describe.status_code != 200:
        raise Exception(f"Erro no DescribeCoverage: {r_describe.status_code}")
    high_elem, low_elem = extract_grid_envelope(r_describe)
    if low_elem is None or high_elem is None:
        raise Exception("Elementos <gml:low> ou <gml:high> não foram encontrados no GridEnvelope.")
    # Os valores geralmente vêm como uma string com dois números separados por espaço
    low_vals = list(map(int, low_elem.text.split()))
    high_vals = list(map(int, high_elem.text.split()))
    native_width = high_vals[0] - low_vals[0] + 1
    native_height = high_vals[1] - low_vals[1] + 1
    return (native_width, native_height)

def calc_resolution_deg_by_pixel(original_bbox, native_width, native_height):
    """
    Calcula a resolução em graus por pixel.
    :param original_bbox:
    :param native_width:
    :param native_height:
    :return:
    """
    res_x = (original_bbox[2] - original_bbox[0]) / native_width
    res_y = (original_bbox[3] - original_bbox[1]) / native_height
    return res_x, res_y

def extract_grid_envelope(r_describe: requests.Response) -> Tuple[int,int]:
    """
    Extrai o GridEnvelope do XML retornado pelo DescribeCoverage do WCS server.
    :param r_describe: XML response do DescribeCoverage.
    :return:
    """
    # Parseia o XML da resposta
    root = ET.fromstring(r_describe.content)
    # Procura o elemento GridEnvelope na resposta (normalmente dentro de CoverageDescription)
    grid_env = root.find(".//gml:GridEnvelope", ns)
    if grid_env is None:
        raise Exception("Nenhum elemento <gml:GridEnvelope> encontrado no DescribeCoverage.")
    low_elem = grid_env.find("gml:low", ns)
    high_elem = grid_env.find("gml:high", ns)
    return high_elem, low_elem


def calc_bbox_pixelsize(bbox, native_width, native_height):
    """
    Calcula o tamanho em pixeis da caixa delimitadora com base nas dimensões nativas.
    """
    # Calcula a largura e altura do recorte
    width = (bbox[2] - bbox[0]) / native_width
    height = (bbox[3] - bbox[1]) / native_height

    return width, height

def get_crop_pixelbbox(original_bbox: Tuple[float, float,float,float], bbox:  Tuple[float, float,float,float],
                       native_width:int, native_height:int) -> Tuple[int, int]:
    """
    Calcula as dimensões do recorte em pixels com base na bbox original e na bbox de recorte.
    :param original_bbox: BoundingBox original do mapa (xmin, ymin, xmax, ymax).
    :param bbox: BoundingBox original do recorte (xmin, ymin, xmax, ymax).
    :param native_width: Largura nativa da imagem em pixels.
    :param native_height: Altura nativa da imagem em pixels.
    :return:
    """
    # Definir a bbox do recorte (por exemplo, uma região de interesse)
    crop_bbox = [float(i) for i in bbox]

    res_x, res_y = calc_resolution_deg_by_pixel(original_bbox, native_width, native_height)
    # Calcular dimensões do recorte em pixels
    crop_width_pixels = int(round((crop_bbox[2] - crop_bbox[0]) / res_x))
    crop_height_pixels = int(round((crop_bbox[3] - crop_bbox[1]) / res_y))

    return crop_width_pixels, crop_height_pixels

def get_municipio_bounds(municipios, municipio_nome):
    """
    Obtém os limites de um município específico.
    :param municipios: Dataframe contendo os municípios e suas geometrias.
    :param municipio_nome:
    :return:
    """
    bbox = municipios[municipios.NM_DIST == municipio_nome].total_bounds
    return bbox

