import pytest
from unittest.mock import patch, MagicMock
import xml.etree.ElementTree as ET
import numpy as np
from mosqgeoserver import (
    get_native_pixel_dims,
    extract_grid_envelope,
    calc_bbox_pixelsize,
    get_crop_pixelbbox,
    get_municipio_bounds
)

# Sample test data
SAMPLE_XML = """
<CoverageDescription xmlns="http://www.opengis.net/wcs" xmlns:gml="http://www.opengis.net/gml">
    <gml:GridEnvelope>
        <gml:low>0 0</gml:low>
        <gml:high>1000 500</gml:high>
    </gml:GridEnvelope>
</CoverageDescription>
"""

@pytest.fixture
def mock_describe_response():
    response = MagicMock()
    response.status_code = 200
    response.content = SAMPLE_XML.encode()
    return response

def test_extract_grid_envelope():
    """Test extracting grid envelope from XML response"""
    mock_response = MagicMock()
    mock_response.content = SAMPLE_XML.encode()
    
    high_elem, low_elem = extract_grid_envelope(mock_response)
    
    assert high_elem.text == "1000 500"
    assert low_elem.text == "0 0"

@patch('mosqgeoserver.requests.get')
def test_get_native_pixel_dims(mock_get, mock_describe_response):
    """Test calculating native pixel dimensions"""
    mock_get.return_value = mock_describe_response
    
    width, height = get_native_pixel_dims(
        wcs_url="http://example.com/wcs",
        wcs_version="1.0.0",
        coverage_id="test_coverage"
    )
    
    assert width == 1001  # high - low + 1
    assert height == 501

def test_calc_bbox_pixelsize():
    """Test calculating pixel size for a bounding box"""
    bbox = [0, 0, 100, 50]
    width, height = calc_bbox_pixelsize(bbox, 1000, 500)
    
    assert np.isclose(width, 0.1)  # (100-0)/1000
    assert np.isclose(height, 0.1)  # (50-0)/500

def test_get_crop_pixelbbox():
    """Test calculating crop dimensions in pixels"""
    bbox = [10, 10, 20, 20]
    width, height = get_crop_pixelbbox(bbox, 1000, 500)
    
    # Expected: (20-10)/0.1 = 100, (20-10)/0.1 = 100
    assert width == 100
    assert height == 100

def test_get_municipio_bounds():
    """Test getting municipality bounds"""
    import geopandas as gpd
    from shapely.geometry import Polygon
    
    # Create test data
    data = {
        'NM_DIST': ['Test City'],
        'geometry': [Polygon([(0, 0), (1, 0), (1, 1), (0, 1)])]
    }
    gdf = gpd.GeoDataFrame(data, crs="EPSG:4326")
    
    bounds = get_municipio_bounds(gdf, 'Test City')
    
    assert len(bounds) == 4
    assert np.allclose(bounds, [0, 0, 1, 1])

@pytest.mark.parametrize("input_xml", [
    "<invalid></invalid>",
    "<gml:GridEnvelope></gml:GridEnvelope>"
])
def test_extract_grid_envelope_errors(input_xml):
    """Test error cases for extract_grid_envelope"""
    mock_response = MagicMock()
    mock_response.content = input_xml.encode()
    
    with pytest.raises(Exception):
        extract_grid_envelope(mock_response)
