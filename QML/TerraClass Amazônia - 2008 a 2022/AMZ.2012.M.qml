<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis maxScale="0" minScale="1e+08" styleCategories="AllStyleCategories" version="3.16.3-Hannover" hasScaleBasedVisibilityFlag="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>0</Searchable>
  </flags>
  <temporal enabled="0" mode="0" fetchMode="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <customproperties>
    <property value="false" key="WMSBackgroundLayer"/>
    <property value="false" key="WMSPublishDataSourceUrl"/>
    <property value="0" key="embeddedWidgets/count"/>
  </customproperties>
  <pipe>
    <provider>
      <resampling enabled="false" zoomedOutResamplingMethod="nearestNeighbour" maxOversampling="2" zoomedInResamplingMethod="nearestNeighbour"/>
    </provider>
    <rasterrenderer opacity="1" nodataColor="" type="paletted" band="1" alphaBand="-1">
      <rasterTransparency/>
      <minMaxOrigin>
        <limits>None</limits>
        <extent>WholeRaster</extent>
        <statAccuracy>Estimated</statAccuracy>
        <cumulativeCutLower>0.02</cumulativeCutLower>
        <cumulativeCutUpper>0.98</cumulativeCutUpper>
        <stdDevFactor>2</stdDevFactor>
      </minMaxOrigin>
      <colorPalette>
        <paletteEntry label="VEGETACAO NATURAL FLORESTAL PRIMARIA" value="1" color="#005500" alpha="255"/>
        <paletteEntry label="VEGETACAO NATURAL FLORESTAL SECUNDARIA" value="2" color="#0fc80f" alpha="255"/>
        <paletteEntry label="SILVICULTURA" value="9" color="#a8a800" alpha="255"/>
        <paletteEntry label="PASTAGEM ARBUSTIVA/ARBOREA" value="10" color="#e6a04b" alpha="255"/>
        <paletteEntry label="PASTAGEM HERBACEA" value="11" color="#ffec87" alpha="255"/>
        <paletteEntry label="CULTURA AGRICOLA PERENE" value="12" color="#ff8828" alpha="255"/>
        <paletteEntry label="CULTURA AGRICOLA SEMIPERENE" value="13" color="#996400" alpha="255"/>
        <paletteEntry label="MINERACAO" value="16" color="#ad89cd" alpha="255"/>
        <paletteEntry label="URBANIZADA" value="17" color="#ffa8c0" alpha="255"/>
        <paletteEntry label="OUTROS USOS" value="20" color="#e1e1e1" alpha="255"/>
        <paletteEntry label="DESFLORESTAMENTO NO ANO" value="22" color="#ff0000" alpha="255"/>
        <paletteEntry label="CORPO DAGUA" value="23" color="#0000ff" alpha="255"/>
        <paletteEntry label="NAO OBSERVADO" value="25" color="#ffffff" alpha="255"/>
        <paletteEntry label="NAO FLORESTA" value="50" color="#ff00ff" alpha="255"/>
        <paletteEntry label="CULTURA AGRICOLA TEMPORARIA" value="52" color="#ffff00" alpha="255"/>
      </colorPalette>
      <colorramp type="randomcolors" name="[source]"/>
    </rasterrenderer>
    <brightnesscontrast brightness="0" gamma="1" contrast="0"/>
    <huesaturation colorizeBlue="128" grayscaleMode="0" colorizeRed="255" colorizeOn="0" saturation="0" colorizeStrength="100" colorizeGreen="128"/>
    <rasterresampler maxOversampling="2"/>
    <resamplingStage>resamplingFilter</resamplingStage>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
