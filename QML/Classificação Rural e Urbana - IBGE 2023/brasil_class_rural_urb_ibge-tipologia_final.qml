<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.4.8-Madeira" labelsEnabled="0" simplifyLocal="1" simplifyMaxScale="1" simplifyDrawingHints="1" styleCategories="AllStyleCategories" maxScale="0" hasScaleBasedVisibilityFlag="0" simplifyAlgorithm="0" minScale="1e+08" simplifyDrawingTol="1" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 type="RuleRenderer" enableorderby="0" symbollevels="0" forceraster="0">
    <rules key="{8ffdec8e-bc75-415c-a9c0-122acd2f4c63}">
      <rule label="1 - 75-100; 0-25; 0-25 (urbano)" key="{f038fc0b-e051-4891-b16b-aa63c60f5597}" filter="( &quot;FZZ_URB_%&quot; > 75 AND &quot;FZZ_URB_%&quot; &lt;= 100 ) and ( &quot;FZZ_RUR_%&quot; >= 0 AND &quot;FZZ_RUR_%&quot; &lt;= 25) AND ( &quot;FZZ_NAT_%&quot; >= 0 AND &quot;FZZ_NAT_%&quot; &lt;= 25)" symbol="0"/>
      <rule label="2 - 50-75; 25-50; 0-25" key="{4afa9730-bb89-4a53-8534-252ba2161f28}" filter="( &quot;FZZ_URB_%&quot; > 50 AND &quot;FZZ_URB_%&quot; &lt;= 75 ) and ( &quot;FZZ_RUR_%&quot; > 25 AND &quot;FZZ_RUR_%&quot; &lt;= 50) AND ( &quot;FZZ_NAT_%&quot; >= 0 AND &quot;FZZ_NAT_%&quot; &lt;= 25) " symbol="1"/>
      <rule label="3 - 50-75; 0-25; 0-25" key="{b6d1765f-9086-4f77-a2b0-95d814408c98}" filter="( &quot;FZZ_URB_%&quot; > 50 AND &quot;FZZ_URB_%&quot; &lt;= 75 ) and ( &quot;FZZ_RUR_%&quot; >= 0 AND &quot;FZZ_RUR_%&quot; &lt;= 25) AND ( &quot;FZZ_NAT_%&quot; >= 0 AND &quot;FZZ_NAT_%&quot; &lt;= 25) " symbol="2"/>
      <rule label="4 - 50-75; 0-25; 25-50" key="{8e7e95da-2522-40c5-b565-ef35deff5783}" filter="( &quot;FZZ_URB_%&quot; > 50 AND &quot;FZZ_URB_%&quot; &lt;= 75 ) and ( &quot;FZZ_RUR_%&quot; >= 0 AND &quot;FZZ_RUR_%&quot; &lt;= 25) AND ( &quot;FZZ_NAT_%&quot; > 25 AND &quot;FZZ_NAT_%&quot; &lt;= 50)" symbol="3"/>
      <rule label="5 - 25-50; 50-75; 0-25" key="{59865630-55ab-4be3-8a92-89d2a717e7d1}" filter="( &quot;FZZ_URB_%&quot; > 25 AND &quot;FZZ_URB_%&quot; &lt;= 50 ) and ( &quot;FZZ_RUR_%&quot; > 50 AND &quot;FZZ_RUR_%&quot; &lt;= 75) AND ( &quot;FZZ_NAT_%&quot; >= 0 AND &quot;FZZ_NAT_%&quot; &lt;= 25)" symbol="4"/>
      <rule label="6 - 25-50; 25-50; 0-25 " key="{a4888f53-b71a-464f-be6a-d07809dcfdf4}" filter="( &quot;FZZ_URB_%&quot; > 25 AND &quot;FZZ_URB_%&quot; &lt;= 50 ) and ( &quot;FZZ_RUR_%&quot; > 25 AND &quot;FZZ_RUR_%&quot; &lt;= 50) AND ( &quot;FZZ_NAT_%&quot; >= 0 AND &quot;FZZ_NAT_%&quot; &lt;= 25)" symbol="5"/>
      <rule label="7 - 25-50; 25-50; 25-50 " key="{47db5318-70e8-40ac-8cac-79b6cde82d50}" filter="( &quot;FZZ_URB_%&quot; > 25 AND &quot;FZZ_URB_%&quot; &lt;= 50 ) and ( &quot;FZZ_RUR_%&quot; > 25 AND &quot;FZZ_RUR_%&quot; &lt;= 50) AND ( &quot;FZZ_NAT_%&quot; > 25 AND &quot;FZZ_NAT_%&quot; &lt;= 50) " symbol="6"/>
      <rule label="8 - 25-50; 0-25; 25-50" key="{8229b12a-c70e-487f-9a76-300f0ee31bf9}" filter="( &quot;FZZ_URB_%&quot; > 25 AND &quot;FZZ_URB_%&quot; &lt;= 50 ) and ( &quot;FZZ_RUR_%&quot; >= 0 AND &quot;FZZ_RUR_%&quot; &lt;= 25) AND ( &quot;FZZ_NAT_%&quot; > 25 AND &quot;FZZ_NAT_%&quot; &lt;= 50) " symbol="7"/>
      <rule label="9 - 25-50; 0-25; 50-75" key="{cb54238f-ca5f-437d-a3b9-ac464586d56e}" filter="( &quot;FZZ_URB_%&quot; > 25 AND &quot;FZZ_URB_%&quot; &lt;= 50 ) and ( &quot;FZZ_RUR_%&quot; >= 0 AND &quot;FZZ_RUR_%&quot; &lt;= 25) AND ( &quot;FZZ_NAT_%&quot; > 50 AND &quot;FZZ_NAT_%&quot; &lt;= 75)" symbol="8"/>
      <rule label="10 - 0-25; 75-100; 0-25 (rural)" key="{4ff4d919-533d-4ad9-96f1-c0caee2df93e}" filter="( &quot;FZZ_URB_%&quot; >= 0 AND &quot;FZZ_URB_%&quot; &lt;= 25 ) and ( &quot;FZZ_RUR_%&quot; > 75 AND &quot;FZZ_RUR_%&quot; &lt;= 100) AND ( &quot;FZZ_NAT_%&quot; >= 0 AND &quot;FZZ_NAT_%&quot; &lt;= 25)" symbol="9"/>
      <rule label="11 - 0-25; 50-75; 0-25" key="{6b9da8fe-efe3-4cca-9a97-e4881dbc8d1c}" filter="( &quot;FZZ_URB_%&quot; >= 0 AND &quot;FZZ_URB_%&quot; &lt;= 25 ) and ( &quot;FZZ_RUR_%&quot; > 50 AND &quot;FZZ_RUR_%&quot; &lt;= 75) AND ( &quot;FZZ_NAT_%&quot; >= 0 AND &quot;FZZ_NAT_%&quot; &lt;= 25)" symbol="10"/>
      <rule label="12 - 0-25; 50-75; 25-50" key="{eefaef27-2a49-461e-9342-33bc343654df}" filter="( &quot;FZZ_URB_%&quot; >= 0 AND &quot;FZZ_URB_%&quot; &lt;= 25 ) and ( &quot;FZZ_RUR_%&quot; > 50 AND &quot;FZZ_RUR_%&quot; &lt;= 75) AND ( &quot;FZZ_NAT_%&quot; > 25 AND &quot;FZZ_NAT_%&quot; &lt;= 50)" symbol="11"/>
      <rule label="13 - 0-25; 25-50; 25-50" key="{a59d9034-45c1-4bf5-964e-a31fb6a3100b}" filter="( &quot;FZZ_URB_%&quot; >= 0 AND &quot;FZZ_URB_%&quot; &lt;= 25 ) and ( &quot;FZZ_RUR_%&quot; > 25 AND &quot;FZZ_RUR_%&quot; &lt;= 50) AND ( &quot;FZZ_NAT_%&quot; > 25 AND &quot;FZZ_NAT_%&quot; &lt;= 50)" symbol="12"/>
      <rule label="14 - 0-25; 25-50; 50-75" key="{a9df2c8f-cd2a-47be-9fda-8e3d5671d6f3}" filter="( &quot;FZZ_URB_%&quot; >= 0 AND &quot;FZZ_URB_%&quot; &lt;= 25 ) and ( &quot;FZZ_RUR_%&quot; > 25 AND &quot;FZZ_RUR_%&quot; &lt;= 50) AND ( &quot;FZZ_NAT_%&quot; > 50 AND &quot;FZZ_NAT_%&quot; &lt;= 75)" symbol="13"/>
      <rule label="15 - 0-25; 0-25; 50-75" key="{56745340-bda7-4c4f-a726-81b90a9a0352}" filter="( &quot;FZZ_URB_%&quot; >= 0 AND &quot;FZZ_URB_%&quot; &lt;= 25 ) and ( &quot;FZZ_RUR_%&quot; >= 0 AND &quot;FZZ_RUR_%&quot; &lt;= 25) AND ( &quot;FZZ_NAT_%&quot; > 50 AND &quot;FZZ_NAT_%&quot; &lt;= 75) " symbol="14"/>
      <rule label="16 - 0-25; 0-25; 75-100 (natural)" key="{d5656a74-2518-4256-8235-b8ba4beeba8d}" filter="( &quot;FZZ_URB_%&quot; >= 0 AND &quot;FZZ_URB_%&quot; &lt;= 25 ) and ( &quot;FZZ_RUR_%&quot; >= 0 AND &quot;FZZ_RUR_%&quot; &lt;= 25) AND ( &quot;FZZ_NAT_%&quot; > 75 AND &quot;FZZ_NAT_%&quot; &lt;= 100)" symbol="15"/>
    </rules>
    <symbols>
      <symbol type="fill" alpha="1" force_rhr="0" name="0" clip_to_extent="1">
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="116,0,3,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="no" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" force_rhr="0" name="1" clip_to_extent="1">
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="223,75,30,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="no" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" force_rhr="0" name="10" clip_to_extent="1">
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="219,213,120,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="no" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" force_rhr="0" name="11" clip_to_extent="1">
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="144,192,44,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="no" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" force_rhr="0" name="12" clip_to_extent="1">
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="170,206,131,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="no" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" force_rhr="0" name="13" clip_to_extent="1">
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="0,153,41,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="no" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" force_rhr="0" name="14" clip_to_extent="1">
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="46,176,109,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="no" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" force_rhr="0" name="15" clip_to_extent="1">
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="0,63,9,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="no" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" force_rhr="0" name="2" clip_to_extent="1">
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="230,119,97,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="no" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" force_rhr="0" name="3" clip_to_extent="1">
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="168,69,27,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="no" k="outline_style"/>
          <prop v="0.06" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" force_rhr="0" name="4" clip_to_extent="1">
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="242,144,40,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="no" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" force_rhr="0" name="5" clip_to_extent="1">
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="244,171,121,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="no" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" force_rhr="0" name="6" clip_to_extent="1">
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="233,221,197,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="no" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" force_rhr="0" name="7" clip_to_extent="1">
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="196,163,117,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="no" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" force_rhr="0" name="8" clip_to_extent="1">
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="4,107,32,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="no" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="fill" alpha="1" force_rhr="0" name="9" clip_to_extent="1">
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="207,203,0,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="no" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
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
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory barWidth="5" penAlpha="255" penWidth="0" minimumSize="0" maxScaleDenominator="1e+08" backgroundColor="#ffffff" sizeScale="3x:0,0,0,0,0,0" rotationOffset="270" enabled="0" penColor="#000000" opacity="1" sizeType="MM" diagramOrientation="Up" height="15" scaleBasedVisibility="0" lineSizeType="MM" scaleDependency="Area" minScaleDenominator="0" lineSizeScale="3x:0,0,0,0,0,0" labelPlacementMethod="XHeight" backgroundAlpha="255" width="15">
      <fontProperties description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
      <attribute label="" field="" color="#000000"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings showAll="1" linePlacementFlags="18" dist="0" placement="1" priority="0" obstacle="0" zIndex="0">
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
    <alias index="0" field="CdAponOrNu" name=""/>
    <alias index="1" field="FZZ_URB_%" name=""/>
    <alias index="2" field="FZZ_RUR_%" name=""/>
    <alias index="3" field="FZZ_NAT_%" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" field="CdAponOrNu" applyOnUpdate="0"/>
    <default expression="" field="FZZ_URB_%" applyOnUpdate="0"/>
    <default expression="" field="FZZ_RUR_%" applyOnUpdate="0"/>
    <default expression="" field="FZZ_NAT_%" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint unique_strength="0" field="CdAponOrNu" notnull_strength="0" exp_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="FZZ_URB_%" notnull_strength="0" exp_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="FZZ_RUR_%" notnull_strength="0" exp_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="FZZ_NAT_%" notnull_strength="0" exp_strength="0" constraints="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="CdAponOrNu" desc="" exp=""/>
    <constraint field="FZZ_URB_%" desc="" exp=""/>
    <constraint field="FZZ_RUR_%" desc="" exp=""/>
    <constraint field="FZZ_NAT_%" desc="" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortExpression="" sortOrder="0" actionWidgetStyle="dropDown">
    <columns>
      <column hidden="0" type="field" width="-1" name="CdAponOrNu"/>
      <column hidden="0" type="field" width="-1" name="FZZ_URB_%"/>
      <column hidden="0" type="field" width="-1" name="FZZ_RUR_%"/>
      <column hidden="0" type="field" width="-1" name="FZZ_NAT_%"/>
      <column hidden="1" type="actions" width="-1"/>
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
    <field editable="1" name="Area_km"/>
    <field editable="1" name="CdAponOrNu"/>
    <field editable="1" name="FID_1"/>
    <field editable="1" name="FZZ_NAT_%"/>
    <field editable="1" name="FZZ_RUR_%"/>
    <field editable="1" name="FZZ_URB_%"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="Area_km"/>
    <field labelOnTop="0" name="CdAponOrNu"/>
    <field labelOnTop="0" name="FID_1"/>
    <field labelOnTop="0" name="FZZ_NAT_%"/>
    <field labelOnTop="0" name="FZZ_RUR_%"/>
    <field labelOnTop="0" name="FZZ_URB_%"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>FID_1</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
