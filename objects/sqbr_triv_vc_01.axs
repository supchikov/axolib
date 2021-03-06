<patch-1.0 appVersion="1.0.12">
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="adsr_1" x="266" y="0">
      <params>
         <frac32.s.map name="a" value="-64.0"/>
         <frac32.s.map name="d" value="-64.0"/>
         <frac32.u.map name="s" value="64.0"/>
         <frac32.s.map name="r" value="39.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="adsr_2" x="434" y="0">
      <params>
         <frac32.s.map name="a" value="-64.0"/>
         <frac32.s.map name="d" value="-64.0"/>
         <frac32.u.map name="s" value="47.0"/>
         <frac32.s.map name="r" value="-25.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="midi/in/keyb" uuid="53b04874696932f38aceaa168bd5d9efb743716d" name="keyb_1" x="0" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/brds/square" uuid="9fe639b7-264e-4152-90be-49c8d82cc03b" name="square_1" x="140" y="84">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
         <frac32.u.map name="timbre" value="10.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/brds/square" uuid="9fe639b7-264e-4152-90be-49c8d82cc03b" name="square_2" x="140" y="224">
      <params>
         <frac32.s.map name="pitch" value="-12.0"/>
         <frac32.u.map name="timbre" value="46.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/gain/vca2in1out" uuid="21fe27cd-152c-4438-9a7c-4cef291f8f2f" name="vca2in1out_1" x="266" y="224">
      <params>
         <frac32.u.map name="gain1" value="0.0"/>
         <frac32.u.map name="gain2" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/lp m" uuid="1aa1bc51da479ed92429af700591f9d7b9f45f22" name="lp_1" x="434" y="224">
      <params>
         <frac32.s.map name="pitch" value="39.0"/>
         <frac32.u.map name="reso" value="10.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="602" y="224">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="square_1" inlet="pitch"/>
         <dest obj="square_2" inlet="pitch"/>
      </net>
      <net>
         <source obj="square_1" outlet="wave"/>
         <dest obj="vca2in1out_1" inlet="in1"/>
      </net>
      <net>
         <source obj="square_2" outlet="wave"/>
         <dest obj="vca2in1out_1" inlet="in2"/>
      </net>
      <net>
         <source obj="adsr_1" outlet="env"/>
         <dest obj="vca2in1out_1" inlet="gain1"/>
         <dest obj="vca2in1out_1" inlet="gain2"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="gate2"/>
         <dest obj="adsr_1" inlet="gate"/>
         <dest obj="adsr_2" inlet="gate"/>
      </net>
      <net>
         <source obj="vca2in1out_1" outlet="out"/>
         <dest obj="lp_1" inlet="in"/>
      </net>
      <net>
         <source obj="adsr_2" outlet="env"/>
         <dest obj="lp_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="lp_1" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>polyphonic</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>757</x>
      <y>322</y>
      <width>1026</width>
      <height>914</height>
   </windowPos>
</patch-1.0>