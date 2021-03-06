<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <project>../apps/mrm</project>
  <project>../apps/mspsim</project>
  <project>../apps/native_gateway</project>
  <simulation>
    <title>Rime collect test</title>
    <delaytime>0</delaytime>
    <ticktime>1</ticktime>
    <randomseed>123456</randomseed>
    <motedelay>1000</motedelay>
    <radiomedium>
      se.sics.cooja.radiomediums.UDGM
      <transmitting_range>50.0</transmitting_range>
      <interference_range>100.0</interference_range>
      <success_ratio_tx>1.0</success_ratio_tx>
      <success_ratio_rx>1.0</success_ratio_rx>
    </radiomedium>
    <motetype>
      se.sics.cooja.contikimote.ContikiMoteType
      <identifier>mtype1</identifier>
      <description>Contiki Mote Type #1</description>
      <contikiapp>../../../examples/rime/example-collect.c</contikiapp>
      <commands>make example-collect.cooja TARGET=cooja</commands>
      <moteinterface>se.sics.cooja.interfaces.Position</moteinterface>
      <moteinterface>se.sics.cooja.interfaces.Battery</moteinterface>
      <moteinterface>se.sics.cooja.contikimote.interfaces.ContikiVib</moteinterface>
      <moteinterface>se.sics.cooja.contikimote.interfaces.ContikiMoteID</moteinterface>
      <moteinterface>se.sics.cooja.contikimote.interfaces.ContikiRS232</moteinterface>
      <moteinterface>se.sics.cooja.contikimote.interfaces.ContikiBeeper</moteinterface>
      <moteinterface>se.sics.cooja.contikimote.interfaces.ContikiIPAddress</moteinterface>
      <moteinterface>se.sics.cooja.contikimote.interfaces.ContikiRadio</moteinterface>
      <moteinterface>se.sics.cooja.contikimote.interfaces.ContikiButton</moteinterface>
      <moteinterface>se.sics.cooja.contikimote.interfaces.ContikiPIR</moteinterface>
      <moteinterface>se.sics.cooja.contikimote.interfaces.ContikiClock</moteinterface>
      <moteinterface>se.sics.cooja.contikimote.interfaces.ContikiLED</moteinterface>
      <moteinterface>se.sics.cooja.contikimote.interfaces.ContikiLog</moteinterface>
      <moteinterface>se.sics.cooja.contikimote.interfaces.ContikiCFS</moteinterface>
      <moteinterface>se.sics.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <symbols>false</symbols>
      <commstack>Rime</commstack>
    </motetype>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <motetype_identifier>mtype1</motetype_identifier>
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>50.829139451170256</x>
        <y>62.671405251575884</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.interfaces.Battery
        <infinite>false</infinite>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>1</id>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiIPAddress
        <ipv4address>10.10.9.16</ipv4address>
      </interface_config>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <motetype_identifier>mtype1</motetype_identifier>
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>66.70779372167401</x>
        <y>87.6357288540325</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.interfaces.Battery
        <infinite>false</infinite>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>2</id>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiIPAddress
        <ipv4address>10.10.10.16</ipv4address>
      </interface_config>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <motetype_identifier>mtype1</motetype_identifier>
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>41.129223698257974</x>
        <y>11.860747327849797</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.interfaces.Battery
        <infinite>false</infinite>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>3</id>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiIPAddress
        <ipv4address>10.10.16.4</ipv4address>
      </interface_config>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <motetype_identifier>mtype1</motetype_identifier>
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>3.896453344832884</x>
        <y>57.94647173289612</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.interfaces.Battery
        <infinite>false</infinite>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>4</id>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiIPAddress
        <ipv4address>10.10.17.2</ipv4address>
      </interface_config>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <motetype_identifier>mtype1</motetype_identifier>
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>66.34456950462831</x>
        <y>23.965576279871247</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.interfaces.Battery
        <infinite>false</infinite>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>5</id>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiIPAddress
        <ipv4address>10.10.8.8</ipv4address>
      </interface_config>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <motetype_identifier>mtype1</motetype_identifier>
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>70.88189625059834</x>
        <y>87.6624950776213</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.interfaces.Battery
        <infinite>false</infinite>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>6</id>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiIPAddress
        <ipv4address>10.10.16.12</ipv4address>
      </interface_config>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <motetype_identifier>mtype1</motetype_identifier>
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>19.09803704982651</x>
        <y>38.15109163392978</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.interfaces.Battery
        <infinite>false</infinite>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>7</id>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiIPAddress
        <ipv4address>10.10.8.4</ipv4address>
      </interface_config>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <motetype_identifier>mtype1</motetype_identifier>
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>89.63745297998314</x>
        <y>5.041038966356015</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.interfaces.Battery
        <infinite>false</infinite>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>8</id>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiIPAddress
        <ipv4address>10.10.3.6</ipv4address>
      </interface_config>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <motetype_identifier>mtype1</motetype_identifier>
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>13.348832186584092</x>
        <y>21.93390094486253</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.interfaces.Battery
        <infinite>false</infinite>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>9</id>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiIPAddress
        <ipv4address>10.10.15.15</ipv4address>
      </interface_config>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <motetype_identifier>mtype1</motetype_identifier>
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>1.674784139064478</x>
        <y>14.130140721379835</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.interfaces.Battery
        <infinite>false</infinite>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>10</id>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiIPAddress
        <ipv4address>10.10.4.19</ipv4address>
      </interface_config>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <motetype_identifier>mtype1</motetype_identifier>
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>47.87142051729898</x>
        <y>7.506518941902218</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.interfaces.Battery
        <infinite>false</infinite>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>11</id>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiIPAddress
        <ipv4address>10.10.5.7</ipv4address>
      </interface_config>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <motetype_identifier>mtype1</motetype_identifier>
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>26.88271893793631</x>
        <y>45.005087461409865</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.interfaces.Battery
        <infinite>false</infinite>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>12</id>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiIPAddress
        <ipv4address>10.10.17.17</ipv4address>
      </interface_config>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <motetype_identifier>mtype1</motetype_identifier>
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>56.02971812708909</x>
        <y>26.88551057316878</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.interfaces.Battery
        <infinite>false</infinite>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>13</id>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiIPAddress
        <ipv4address>10.10.13.11</ipv4address>
      </interface_config>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <motetype_identifier>mtype1</motetype_identifier>
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>95.69470045280002</x>
        <y>71.59310205157577</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.interfaces.Battery
        <infinite>false</infinite>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>14</id>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiIPAddress
        <ipv4address>10.10.14.17</ipv4address>
      </interface_config>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <motetype_identifier>mtype1</motetype_identifier>
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>31.731698652367335</x>
        <y>39.71639147226488</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.interfaces.Battery
        <infinite>false</infinite>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>15</id>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiIPAddress
        <ipv4address>10.10.16.19</ipv4address>
      </interface_config>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <motetype_identifier>mtype1</motetype_identifier>
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>2.8792353689463424</x>
        <y>51.72896355140204</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.interfaces.Battery
        <infinite>false</infinite>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>16</id>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiIPAddress
        <ipv4address>10.10.2.4</ipv4address>
      </interface_config>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <motetype_identifier>mtype1</motetype_identifier>
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>51.07177717821779</x>
        <y>90.91445330727116</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.interfaces.Battery
        <infinite>false</infinite>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>17</id>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiIPAddress
        <ipv4address>10.10.8.9</ipv4address>
      </interface_config>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <motetype_identifier>mtype1</motetype_identifier>
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>43.42318694224158</x>
        <y>91.44323457482095</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.interfaces.Battery
        <infinite>false</infinite>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>18</id>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiIPAddress
        <ipv4address>10.10.16.4</ipv4address>
      </interface_config>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <motetype_identifier>mtype1</motetype_identifier>
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>87.22205782780289</x>
        <y>48.33830904569607</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.interfaces.Battery
        <infinite>false</infinite>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>19</id>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiIPAddress
        <ipv4address>10.10.6.15</ipv4address>
      </interface_config>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <motetype_identifier>mtype1</motetype_identifier>
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>1.6332448872152683</x>
        <y>32.64258506789177</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.interfaces.Battery
        <infinite>false</infinite>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>20</id>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiIPAddress
        <ipv4address>10.10.18.5</ipv4address>
      </interface_config>
    </mote>
  </simulation>
  <plugin>
    se.sics.cooja.plugins.SimControl
    <width>223</width>
    <z>1</z>
    <height>227</height>
    <location_x>0</location_x>
    <location_y>0</location_y>
    <minimized>false</minimized>
  </plugin>
  <plugin>
    se.sics.cooja.plugins.VisState
    <width>300</width>
    <z>0</z>
    <height>300</height>
    <location_x>723</location_x>
    <location_y>0</location_y>
    <minimized>false</minimized>
  </plugin>
  <plugin>
    se.sics.cooja.plugins.LogListener
    <plugin_config>
      <filter />
      <history>256</history>
    </plugin_config>
    <width>1023</width>
    <z>2</z>
    <height>207</height>
    <location_x>0</location_x>
    <location_y>461</location_y>
    <minimized>false</minimized>
  </plugin>
</simconf>

