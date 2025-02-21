<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyDrawingHints="1" simplifyAlgorithm="0" minScale="1e+08" simplifyLocal="1" styleCategories="AllStyleCategories" maxScale="0" version="3.4.8-Madeira" simplifyMaxScale="1" simplifyDrawingTol="1" hasScaleBasedVisibilityFlag="0" readOnly="0" labelsEnabled="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 type="RuleRenderer" symbollevels="0" enableorderby="0" forceraster="0">
    <rules key="{8ffdec8e-bc75-415c-a9c0-122acd2f4c63}">
      <rule symbol="0" key="{f038fc0b-e051-4891-b16b-aa63c60f5597}" label="1 - 75-100; 0-25; 0-25 (urbano)" filter="( &quot;FZZ_URB_%&quot; > 75 AND &quot;FZZ_URB_%&quot; &lt;= 100 ) and ( &quot;FZZ_RUR_%&quot; >= 0 AND &quot;FZZ_RUR_%&quot; &lt;= 25) AND ( &quot;FZZ_NAT_%&quot; >= 0 AND &quot;FZZ_NAT_%&quot; &lt;= 25)"/>
      <rule symbol="1" key="{4afa9730-bb89-4a53-8534-252ba2161f28}" label="2 - 50-75; 25-50; 0-25" filter="( &quot;FZZ_URB_%&quot; > 50 AND &quot;FZZ_URB_%&quot; &lt;= 75 ) and ( &quot;FZZ_RUR_%&quot; > 25 AND &quot;FZZ_RUR_%&quot; &lt;= 50) AND ( &quot;FZZ_NAT_%&quot; >= 0 AND &quot;FZZ_NAT_%&quot; &lt;= 25) "/>
      <rule symbol="2" key="{b6d1765f-9086-4f77-a2b0-95d814408c98}" label="3 - 50-75; 0-25; 0-25" filter="( &quot;FZZ_URB_%&quot; > 50 AND &quot;FZZ_URB_%&quot; &lt;= 75 ) and ( &quot;FZZ_RUR_%&quot; >= 0 AND &quot;FZZ_RUR_%&quot; &lt;= 25) AND ( &quot;FZZ_NAT_%&quot; >= 0 AND &quot;FZZ_NAT_%&quot; &lt;= 25) "/>
      <rule symbol="3" key="{8e7e95da-2522-40c5-b565-ef35deff5783}" label="4 - 50-75; 0-25; 25-50" filter="( &quot;FZZ_URB_%&quot; > 50 AND &quot;FZZ_URB_%&quot; &lt;= 75 ) and ( &quot;FZZ_RUR_%&quot; >= 0 AND &quot;FZZ_RUR_%&quot; &lt;= 25) AND ( &quot;FZZ_NAT_%&quot; > 25 AND &quot;FZZ_NAT_%&quot; &lt;= 50)"/>
      <rule symbol="4" key="{59865630-55ab-4be3-8a92-89d2a717e7d1}" label="5 - 25-50; 50-75; 0-25" filter="( &quot;FZZ_URB_%&quot; > 25 AND &quot;FZZ_URB_%&quot; &lt;= 50 ) and ( &quot;FZZ_RUR_%&quot; > 50 AND &quot;FZZ_RUR_%&quot; &lt;= 75) AND ( &quot;FZZ_NAT_%&quot; >= 0 AND &quot;FZZ_NAT_%&quot; &lt;= 25)"/>
      <rule symbol="5" key="{a4888f53-b71a-464f-be6a-d07809dcfdf4}" label="6 - 25-50; 25-50; 0-25 " filter="( &quot;FZZ_URB_%&quot; > 25 AND &quot;FZZ_URB_%&quot; &lt;= 50 ) and ( &quot;FZZ_RUR_%&quot; > 25 AND &quot;FZZ_RUR_%&quot; &lt;= 50) AND ( &quot;FZZ_NAT_%&quot; >= 0 AND &quot;FZZ_NAT_%&quot; &lt;= 25)"/>
      <rule symbol="6" key="{47db5318-70e8-40ac-8cac-79b6cde82d50}" label="7 - 25-50; 25-50; 25-50 " filter="( &quot;FZZ_URB_%&quot; > 25 AND &quot;FZZ_URB_%&quot; &lt;= 50 ) and ( &quot;FZZ_RUR_%&quot; > 25 AND &quot;FZZ_RUR_%&quot; &lt;= 50) AND ( &quot;FZZ_NAT_%&quot; > 25 AND &quot;FZZ_NAT_%&quot; &lt;= 50) "/>
      <rule symbol="7" key="{8229b12a-c70e-487f-9a76-300f0ee31bf9}" label="8 - 25-50; 0-25; 25-50" filter="( &quot;FZZ_URB_%&quot; > 25 AND &quot;FZZ_URB_%&quot; &lt;= 50 ) and ( &quot;FZZ_RUR_%&quot; >= 0 AND &quot;FZZ_RUR_%&quot; &lt;= 25) AND ( &quot;FZZ_NAT_%&quot; > 25 AND &quot;FZZ_NAT_%&quot; &lt;= 50) "/>
      <rule symbol="8" key="{cb54238f-ca5f-437d-a3b9-ac464586d56e}" label="9 - 25-50; 0-25; 50-75" filter="( &quot;FZZ_URB_%&quot; > 25 AND &quot;FZZ_URB_%&quot; &lt;= 50 ) and ( &quot;FZZ_RUR_%&quot; >= 0 AND &quot;FZZ_RUR_%&quot; &lt;= 25) AND ( &quot;FZZ_NAT_%&quot; > 50 AND &quot;FZZ_NAT_%&quot; &lt;= 75)"/>
      <rule symbol="9" key="{4ff4d919-533d-4ad9-96f1-c0caee2df93e}" label="10 - 0-25; 75-100; 0-25 (rural)" filter="( &quot;FZZ_URB_%&quot; >= 0 AND &quot;FZZ_URB_%&quot; &lt;= 25 ) and ( &quot;FZZ_RUR_%&quot; > 75 AND &quot;FZZ_RUR_%&quot; &lt;= 100) AND ( &quot;FZZ_NAT_%&quot; >= 0 AND &quot;FZZ_NAT_%&quot; &lt;= 25)"/>
      <rule symbol="10" key="{6b9da8fe-efe3-4cca-9a97-e4881dbc8d1c}" label="11 - 0-25; 50-75; 0-25" filter="( &quot;FZZ_URB_%&quot; >= 0 AND &quot;FZZ_URB_%&quot; &lt;= 25 ) and ( &quot;FZZ_RUR_%&quot; > 50 AND &quot;FZZ_RUR_%&quot; &lt;= 75) AND ( &quot;FZZ_NAT_%&quot; >= 0 AND &quot;FZZ_NAT_%&quot; &lt;= 25)"/>
      <rule symbol="11" key="{eefaef27-2a49-461e-9342-33bc343654df}" label="12 - 0-25; 50-75; 25-50" filter="( &quot;FZZ_URB_%&quot; >= 0 AND &quot;FZZ_URB_%&quot; &lt;= 25 ) and ( &quot;FZZ_RUR_%&quot; > 50 AND &quot;FZZ_RUR_%&quot; &lt;= 75) AND ( &quot;FZZ_NAT_%&quot; > 25 AND &quot;FZZ_NAT_%&quot; &lt;= 50)"/>
      <rule symbol="12" key="{a59d9034-45c1-4bf5-964e-a31fb6a3100b}" label="13 - 0-25; 25-50; 25-50" filter="( &quot;FZZ_URB_%&quot; >= 0 AND &quot;FZZ_URB_%&quot; &lt;= 25 ) and ( &quot;FZZ_RUR_%&quot; > 25 AND &quot;FZZ_RUR_%&quot; &lt;= 50) AND ( &quot;FZZ_NAT_%&quot; > 25 AND &quot;FZZ_NAT_%&quot; &lt;= 50)"/>
      <rule symbol="13" key="{a9df2c8f-cd2a-47be-9fda-8e3d5671d6f3}" label="14 - 0-25; 25-50; 50-75" filter="( &quot;FZZ_URB_%&quot; >= 0 AND &quot;FZZ_URB_%&quot; &lt;= 25 ) and ( &quot;FZZ_RUR_%&quot; > 25 AND &quot;FZZ_RUR_%&quot; &lt;= 50) AND ( &quot;FZZ_NAT_%&quot; > 50 AND &quot;FZZ_NAT_%&quot; &lt;= 75)"/>
      <rule symbol="14" key="{56745340-bda7-4c4f-a726-81b90a9a0352}" label="15 - 0-25; 0-25; 50-75" filter="( &quot;FZZ_URB_%&quot; >= 0 AND &quot;FZZ_URB_%&quot; &lt;= 25 ) and ( &quot;FZZ_RUR_%&quot; >= 0 AND &quot;FZZ_RUR_%&quot; &lt;= 25) AND ( &quot;FZZ_NAT_%&quot; > 50 AND &quot;FZZ_NAT_%&quot; &lt;= 75) "/>
      <rule symbol="15" key="{d5656a74-2518-4256-8235-b8ba4beeba8d}" label="16 - 0-25; 0-25; 75-100 (natural)" filter="( &quot;FZZ_URB_%&quot; >= 0 AND &quot;FZZ_URB_%&quot; &lt;= 25 ) and ( &quot;FZZ_RUR_%&quot; >= 0 AND &quot;FZZ_RUR_%&quot; &lt;= 25) AND ( &quot;FZZ_NAT_%&quot; > 75 AND &quot;FZZ_NAT_%&quot; &lt;= 100)"/>
    </rules>
    <symbols>
      <symbol type="fill" name="0" clip_to_extent="1" alpha="1" force_rhr="0">
        <layer locked="0" class="SimpleFill" pass="0" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="116,0,3,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="1" clip_to_extent="1" alpha="1" force_rhr="0">
        <layer locked="0" class="SimpleFill" pass="0" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="116,0,3,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="10" clip_to_extent="1" alpha="1" force_rhr="0">
        <layer locked="0" class="SimpleFill" pass="0" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="207,203,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="11" clip_to_extent="1" alpha="1" force_rhr="0">
        <layer locked="0" class="SimpleFill" pass="0" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="207,203,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="12" clip_to_extent="1" alpha="1" force_rhr="0">
        <layer locked="0" class="SimpleFill" pass="0" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="207,203,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="13" clip_to_extent="1" alpha="1" force_rhr="0">
        <layer locked="0" class="SimpleFill" pass="0" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="207,203,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="14" clip_to_extent="1" alpha="1" force_rhr="0">
        <layer locked="0" class="SimpleFill" pass="0" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="207,203,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="15" clip_to_extent="1" alpha="1" force_rhr="0">
        <layer locked="0" class="SimpleFill" pass="0" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="207,203,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="2" clip_to_extent="1" alpha="1" force_rhr="0">
        <layer locked="0" class="SimpleFill" pass="0" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="116,0,3,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="3" clip_to_extent="1" alpha="1" force_rhr="0">
        <layer locked="0" class="SimpleFill" pass="0" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="116,0,3,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0.06"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="4" clip_to_extent="1" alpha="1" force_rhr="0">
        <layer locked="0" class="SimpleFill" pass="0" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="207,203,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="5" clip_to_extent="1" alpha="1" force_rhr="0">
        <layer locked="0" class="SimpleFill" pass="0" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="207,203,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="6" clip_to_extent="1" alpha="1" force_rhr="0">
        <layer locked="0" class="SimpleFill" pass="0" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="207,203,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="7" clip_to_extent="1" alpha="1" force_rhr="0">
        <layer locked="0" class="SimpleFill" pass="0" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="207,203,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="8" clip_to_extent="1" alpha="1" force_rhr="0">
        <layer locked="0" class="SimpleFill" pass="0" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="207,203,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" name="9" clip_to_extent="1" alpha="1" force_rhr="0">
        <layer locked="0" class="SimpleFill" pass="0" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="207,203,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <customproperties>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory penColor="#000000" backgroundColor="#ffffff" barWidth="5" minScaleDenominator="0" maxScaleDenominator="1e+08" opacity="1" height="15" penAlpha="255" sizeScale="3x:0,0,0,0,0,0" lineSizeType="MM" width="15" sizeType="MM" scaleBasedVisibility="0" labelPlacementMethod="XHeight" lineSizeScale="3x:0,0,0,0,0,0" backgroundAlpha="255" minimumSize="0" rotationOffset="270" diagramOrientation="Up" penWidth="0" scaleDependency="Area" enabled="0">
      <fontProperties style="" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0"/>
      <attribute field="" label="" color="#000000"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings obstacle="0" priority="0" linePlacementFlags="18" zIndex="0" placement="1" dist="0" showAll="1">
    <properties>
      <Option type="Map">
        <Option type="QString" name="name" value=""/>
        <Option name="properties"/>
        <Option type="QString" name="type" value="collection"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="CdAponOrNu">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="FZZ_URB_%">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="FZZ_RUR_%">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="FZZ_NAT_%">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="CdAponOrNu" name="" index="0"/>
    <alias field="FZZ_URB_%" name="" index="1"/>
    <alias field="FZZ_RUR_%" name="" index="2"/>
    <alias field="FZZ_NAT_%" name="" index="3"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="CdAponOrNu" applyOnUpdate="0" expression=""/>
    <default field="FZZ_URB_%" applyOnUpdate="0" expression=""/>
    <default field="FZZ_RUR_%" applyOnUpdate="0" expression=""/>
    <default field="FZZ_NAT_%" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint field="CdAponOrNu" unique_strength="0" notnull_strength="0" exp_strength="0" constraints="0"/>
    <constraint field="FZZ_URB_%" unique_strength="0" notnull_strength="0" exp_strength="0" constraints="0"/>
    <constraint field="FZZ_RUR_%" unique_strength="0" notnull_strength="0" exp_strength="0" constraints="0"/>
    <constraint field="FZZ_NAT_%" unique_strength="0" notnull_strength="0" exp_strength="0" constraints="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="CdAponOrNu" exp="" desc=""/>
    <constraint field="FZZ_URB_%" exp="" desc=""/>
    <constraint field="FZZ_RUR_%" exp="" desc=""/>
    <constraint field="FZZ_NAT_%" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortExpression="" actionWidgetStyle="dropDown" sortOrder="0">
    <columns>
      <column type="field" name="CdAponOrNu" hidden="0" width="-1"/>
      <column type="field" name="FZZ_URB_%" hidden="0" width="-1"/>
      <column type="field" name="FZZ_RUR_%" hidden="0" width="-1"/>
      <column type="field" name="FZZ_NAT_%" hidden="0" width="-1"/>
      <column type="actions" hidden="1" width="-1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- código: utf-8 -*-
"""
Formas QGIS podem ter uma função Python que é chamada quando o formulário é
aberto.

Use esta função para adicionar lógica extra para seus formulários.

Digite o nome da função na "função Python Init"
campo.
Um exemplo a seguir:
"""
de qgis.PyQt.QtWidgets importar QWidget

def my_form_open(diálogo, camada, feição):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field name="Area_km" editable="1"/>
    <field name="CdAponOrNu" editable="1"/>
    <field name="FID_1" editable="1"/>
    <field name="FZZ_NAT_%" editable="1"/>
    <field name="FZZ_RUR_%" editable="1"/>
    <field name="FZZ_URB_%" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="Area_km" labelOnTop="0"/>
    <field name="CdAponOrNu" labelOnTop="0"/>
    <field name="FID_1" labelOnTop="0"/>
    <field name="FZZ_NAT_%" labelOnTop="0"/>
    <field name="FZZ_RUR_%" labelOnTop="0"/>
    <field name="FZZ_URB_%" labelOnTop="0"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>FID_1</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
