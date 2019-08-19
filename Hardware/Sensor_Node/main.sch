<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.4.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="4" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="1" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="1" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="1" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="1" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="4" fill="1" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="0" fill="1" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="0" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="STMicroelectronics - STM32F103C8T6">
<description>Upverter Parts Library

Created by Upverter.com</description>
<packages>
<package name="STMICROELECTRONICS_STM32F103C8T6_0">
<description>MC-ARM-STM32F103X8_B-SQ48</description>
<wire x1="-2.85" y1="-2.85" x2="-2.85" y2="2.85" width="0.15" layer="21"/>
<wire x1="2.85" y1="-2.85" x2="2.85" y2="2.85" width="0.15" layer="21"/>
<wire x1="-2.85" y1="2.85" x2="2.85" y2="2.85" width="0.15" layer="21"/>
<wire x1="-2.85" y1="-2.85" x2="2.85" y2="-2.85" width="0.15" layer="21"/>
<wire x1="-3.5" y1="-3.5" x2="-3.5" y2="3.5" width="0.1" layer="51"/>
<wire x1="3.5" y1="-3.5" x2="3.5" y2="3.5" width="0.1" layer="51"/>
<wire x1="-3.5" y1="3.5" x2="3.5" y2="3.5" width="0.1" layer="51"/>
<wire x1="-3.5" y1="-3.5" x2="3.5" y2="-3.5" width="0.1" layer="51"/>
<wire x1="-4.9" y1="-4.9" x2="-4.9" y2="4.9" width="0.1" layer="39"/>
<wire x1="-4.9" y1="4.9" x2="4.9" y2="4.9" width="0.1" layer="39"/>
<wire x1="4.9" y1="4.9" x2="4.9" y2="-4.9" width="0.1" layer="39"/>
<wire x1="4.9" y1="-4.9" x2="-4.9" y2="-4.9" width="0.1" layer="39"/>
<text x="-5.9" y="4.9" size="1" layer="25">&gt;NAME</text>
<circle x="-4.025" y="3.425" radius="0.125" width="0.25" layer="21"/>
<circle x="-1.85" y="1.85" radius="0.3" width="0.6" layer="21"/>
<circle x="-2.6" y="2.6" radius="0.5" width="0.1" layer="51"/>
<smd name="1" x="-4.025" y="2.75" dx="0.25" dy="1.55" layer="1" roundness="100" rot="R90"/>
<smd name="2" x="-4.025" y="2.25" dx="0.25" dy="1.55" layer="1" roundness="100" rot="R90"/>
<smd name="3" x="-4.025" y="1.75" dx="0.25" dy="1.55" layer="1" roundness="100" rot="R90"/>
<smd name="4" x="-4.025" y="1.25" dx="0.25" dy="1.55" layer="1" roundness="100" rot="R90"/>
<smd name="5" x="-4.025" y="0.75" dx="0.25" dy="1.55" layer="1" roundness="100" rot="R90"/>
<smd name="6" x="-4.025" y="0.25" dx="0.25" dy="1.55" layer="1" roundness="100" rot="R90"/>
<smd name="7" x="-4.025" y="-0.25" dx="0.25" dy="1.55" layer="1" roundness="100" rot="R90"/>
<smd name="8" x="-4.025" y="-0.75" dx="0.25" dy="1.55" layer="1" roundness="100" rot="R90"/>
<smd name="9" x="-4.025" y="-1.25" dx="0.25" dy="1.55" layer="1" roundness="100" rot="R90"/>
<smd name="10" x="-4.025" y="-1.75" dx="0.25" dy="1.55" layer="1" roundness="100" rot="R90"/>
<smd name="11" x="-4.025" y="-2.25" dx="0.25" dy="1.55" layer="1" roundness="100" rot="R90"/>
<smd name="12" x="-4.025" y="-2.75" dx="0.25" dy="1.55" layer="1" roundness="100" rot="R90"/>
<smd name="13" x="-2.75" y="-4.025" dx="0.25" dy="1.55" layer="1" roundness="100"/>
<smd name="14" x="-2.25" y="-4.025" dx="0.25" dy="1.55" layer="1" roundness="100"/>
<smd name="15" x="-1.75" y="-4.025" dx="0.25" dy="1.55" layer="1" roundness="100"/>
<smd name="16" x="-1.25" y="-4.025" dx="0.25" dy="1.55" layer="1" roundness="100"/>
<smd name="17" x="-0.75" y="-4.025" dx="0.25" dy="1.55" layer="1" roundness="100"/>
<smd name="18" x="-0.25" y="-4.025" dx="0.25" dy="1.55" layer="1" roundness="100"/>
<smd name="19" x="0.25" y="-4.025" dx="0.25" dy="1.55" layer="1" roundness="100"/>
<smd name="20" x="0.75" y="-4.025" dx="0.25" dy="1.55" layer="1" roundness="100"/>
<smd name="21" x="1.25" y="-4.025" dx="0.25" dy="1.55" layer="1" roundness="100"/>
<smd name="22" x="1.75" y="-4.025" dx="0.25" dy="1.55" layer="1" roundness="100"/>
<smd name="23" x="2.25" y="-4.025" dx="0.25" dy="1.55" layer="1" roundness="100"/>
<smd name="24" x="2.75" y="-4.025" dx="0.25" dy="1.55" layer="1" roundness="100"/>
<smd name="25" x="4.025" y="-2.75" dx="0.25" dy="1.55" layer="1" roundness="100" rot="R90"/>
<smd name="26" x="4.025" y="-2.25" dx="0.25" dy="1.55" layer="1" roundness="100" rot="R90"/>
<smd name="27" x="4.025" y="-1.75" dx="0.25" dy="1.55" layer="1" roundness="100" rot="R90"/>
<smd name="28" x="4.025" y="-1.25" dx="0.25" dy="1.55" layer="1" roundness="100" rot="R90"/>
<smd name="29" x="4.025" y="-0.75" dx="0.25" dy="1.55" layer="1" roundness="100" rot="R90"/>
<smd name="30" x="4.025" y="-0.25" dx="0.25" dy="1.55" layer="1" roundness="100" rot="R90"/>
<smd name="31" x="4.025" y="0.25" dx="0.25" dy="1.55" layer="1" roundness="100" rot="R90"/>
<smd name="32" x="4.025" y="0.75" dx="0.25" dy="1.55" layer="1" roundness="100" rot="R90"/>
<smd name="33" x="4.025" y="1.25" dx="0.25" dy="1.55" layer="1" roundness="100" rot="R90"/>
<smd name="34" x="4.025" y="1.75" dx="0.25" dy="1.55" layer="1" roundness="100" rot="R90"/>
<smd name="35" x="4.025" y="2.25" dx="0.25" dy="1.55" layer="1" roundness="100" rot="R90"/>
<smd name="36" x="4.025" y="2.75" dx="0.25" dy="1.55" layer="1" roundness="100" rot="R90"/>
<smd name="37" x="2.75" y="4.025" dx="0.25" dy="1.55" layer="1" roundness="100"/>
<smd name="38" x="2.25" y="4.025" dx="0.25" dy="1.55" layer="1" roundness="100"/>
<smd name="39" x="1.75" y="4.025" dx="0.25" dy="1.55" layer="1" roundness="100"/>
<smd name="40" x="1.25" y="4.025" dx="0.25" dy="1.55" layer="1" roundness="100"/>
<smd name="41" x="0.75" y="4.025" dx="0.25" dy="1.55" layer="1" roundness="100"/>
<smd name="42" x="0.25" y="4.025" dx="0.25" dy="1.55" layer="1" roundness="100"/>
<smd name="43" x="-0.25" y="4.025" dx="0.25" dy="1.55" layer="1" roundness="100"/>
<smd name="44" x="-0.75" y="4.025" dx="0.25" dy="1.55" layer="1" roundness="100"/>
<smd name="45" x="-1.25" y="4.025" dx="0.25" dy="1.55" layer="1" roundness="100"/>
<smd name="46" x="-1.75" y="4.025" dx="0.25" dy="1.55" layer="1" roundness="100"/>
<smd name="47" x="-2.25" y="4.025" dx="0.25" dy="1.55" layer="1" roundness="100"/>
<smd name="48" x="-2.75" y="4.025" dx="0.25" dy="1.55" layer="1" roundness="100"/>
</package>
<package name="STMICROELECTRONICS_STM32F103C8T6_1">
<description>MC-ARM-STM32F103X8_B-SQ48</description>
<wire x1="-2.75" y1="-2.75" x2="-2.75" y2="2.75" width="0.15" layer="21"/>
<wire x1="2.75" y1="-2.75" x2="2.75" y2="2.75" width="0.15" layer="21"/>
<wire x1="-2.75" y1="2.75" x2="2.75" y2="2.75" width="0.15" layer="21"/>
<wire x1="-2.75" y1="-2.75" x2="2.75" y2="-2.75" width="0.15" layer="21"/>
<wire x1="-3.5" y1="-3.5" x2="-3.5" y2="3.5" width="0.1" layer="51"/>
<wire x1="3.5" y1="-3.5" x2="3.5" y2="3.5" width="0.1" layer="51"/>
<wire x1="-3.5" y1="3.5" x2="3.5" y2="3.5" width="0.1" layer="51"/>
<wire x1="-3.5" y1="-3.5" x2="3.5" y2="-3.5" width="0.1" layer="51"/>
<wire x1="-5.2" y1="-5.2" x2="-5.2" y2="5.2" width="0.1" layer="39"/>
<wire x1="-5.2" y1="5.2" x2="5.2" y2="5.2" width="0.1" layer="39"/>
<wire x1="5.2" y1="5.2" x2="5.2" y2="-5.2" width="0.1" layer="39"/>
<wire x1="5.2" y1="-5.2" x2="-5.2" y2="-5.2" width="0.1" layer="39"/>
<text x="-6.2" y="5.2" size="1" layer="25">&gt;NAME</text>
<circle x="-4.05" y="3.45" radius="0.125" width="0.25" layer="21"/>
<circle x="-1.75" y="1.75" radius="0.3" width="0.6" layer="21"/>
<circle x="-2.6" y="2.6" radius="0.5" width="0.1" layer="51"/>
<smd name="1" x="-4.05" y="2.75" dx="0.3" dy="1.8" layer="1" roundness="100" rot="R90"/>
<smd name="2" x="-4.05" y="2.25" dx="0.3" dy="1.8" layer="1" roundness="100" rot="R90"/>
<smd name="3" x="-4.05" y="1.75" dx="0.3" dy="1.8" layer="1" roundness="100" rot="R90"/>
<smd name="4" x="-4.05" y="1.25" dx="0.3" dy="1.8" layer="1" roundness="100" rot="R90"/>
<smd name="5" x="-4.05" y="0.75" dx="0.3" dy="1.8" layer="1" roundness="100" rot="R90"/>
<smd name="6" x="-4.05" y="0.25" dx="0.3" dy="1.8" layer="1" roundness="100" rot="R90"/>
<smd name="7" x="-4.05" y="-0.25" dx="0.3" dy="1.8" layer="1" roundness="100" rot="R90"/>
<smd name="8" x="-4.05" y="-0.75" dx="0.3" dy="1.8" layer="1" roundness="100" rot="R90"/>
<smd name="9" x="-4.05" y="-1.25" dx="0.3" dy="1.8" layer="1" roundness="100" rot="R90"/>
<smd name="10" x="-4.05" y="-1.75" dx="0.3" dy="1.8" layer="1" roundness="100" rot="R90"/>
<smd name="11" x="-4.05" y="-2.25" dx="0.3" dy="1.8" layer="1" roundness="100" rot="R90"/>
<smd name="12" x="-4.05" y="-2.75" dx="0.3" dy="1.8" layer="1" roundness="100" rot="R90"/>
<smd name="13" x="-2.75" y="-4.05" dx="0.3" dy="1.8" layer="1" roundness="100"/>
<smd name="14" x="-2.25" y="-4.05" dx="0.3" dy="1.8" layer="1" roundness="100"/>
<smd name="15" x="-1.75" y="-4.05" dx="0.3" dy="1.8" layer="1" roundness="100"/>
<smd name="16" x="-1.25" y="-4.05" dx="0.3" dy="1.8" layer="1" roundness="100"/>
<smd name="17" x="-0.75" y="-4.05" dx="0.3" dy="1.8" layer="1" roundness="100"/>
<smd name="18" x="-0.25" y="-4.05" dx="0.3" dy="1.8" layer="1" roundness="100"/>
<smd name="19" x="0.25" y="-4.05" dx="0.3" dy="1.8" layer="1" roundness="100"/>
<smd name="20" x="0.75" y="-4.05" dx="0.3" dy="1.8" layer="1" roundness="100"/>
<smd name="21" x="1.25" y="-4.05" dx="0.3" dy="1.8" layer="1" roundness="100"/>
<smd name="22" x="1.75" y="-4.05" dx="0.3" dy="1.8" layer="1" roundness="100"/>
<smd name="23" x="2.25" y="-4.05" dx="0.3" dy="1.8" layer="1" roundness="100"/>
<smd name="24" x="2.75" y="-4.05" dx="0.3" dy="1.8" layer="1" roundness="100"/>
<smd name="25" x="4.05" y="-2.75" dx="0.3" dy="1.8" layer="1" roundness="100" rot="R90"/>
<smd name="26" x="4.05" y="-2.25" dx="0.3" dy="1.8" layer="1" roundness="100" rot="R90"/>
<smd name="27" x="4.05" y="-1.75" dx="0.3" dy="1.8" layer="1" roundness="100" rot="R90"/>
<smd name="28" x="4.05" y="-1.25" dx="0.3" dy="1.8" layer="1" roundness="100" rot="R90"/>
<smd name="29" x="4.05" y="-0.75" dx="0.3" dy="1.8" layer="1" roundness="100" rot="R90"/>
<smd name="30" x="4.05" y="-0.25" dx="0.3" dy="1.8" layer="1" roundness="100" rot="R90"/>
<smd name="31" x="4.05" y="0.25" dx="0.3" dy="1.8" layer="1" roundness="100" rot="R90"/>
<smd name="32" x="4.05" y="0.75" dx="0.3" dy="1.8" layer="1" roundness="100" rot="R90"/>
<smd name="33" x="4.05" y="1.25" dx="0.3" dy="1.8" layer="1" roundness="100" rot="R90"/>
<smd name="34" x="4.05" y="1.75" dx="0.3" dy="1.8" layer="1" roundness="100" rot="R90"/>
<smd name="35" x="4.05" y="2.25" dx="0.3" dy="1.8" layer="1" roundness="100" rot="R90"/>
<smd name="36" x="4.05" y="2.75" dx="0.3" dy="1.8" layer="1" roundness="100" rot="R90"/>
<smd name="37" x="2.75" y="4.05" dx="0.3" dy="1.8" layer="1" roundness="100"/>
<smd name="38" x="2.25" y="4.05" dx="0.3" dy="1.8" layer="1" roundness="100"/>
<smd name="39" x="1.75" y="4.05" dx="0.3" dy="1.8" layer="1" roundness="100"/>
<smd name="40" x="1.25" y="4.05" dx="0.3" dy="1.8" layer="1" roundness="100"/>
<smd name="41" x="0.75" y="4.05" dx="0.3" dy="1.8" layer="1" roundness="100"/>
<smd name="42" x="0.25" y="4.05" dx="0.3" dy="1.8" layer="1" roundness="100"/>
<smd name="43" x="-0.25" y="4.05" dx="0.3" dy="1.8" layer="1" roundness="100"/>
<smd name="44" x="-0.75" y="4.05" dx="0.3" dy="1.8" layer="1" roundness="100"/>
<smd name="45" x="-1.25" y="4.05" dx="0.3" dy="1.8" layer="1" roundness="100"/>
<smd name="46" x="-1.75" y="4.05" dx="0.3" dy="1.8" layer="1" roundness="100"/>
<smd name="47" x="-2.25" y="4.05" dx="0.3" dy="1.8" layer="1" roundness="100"/>
<smd name="48" x="-2.75" y="4.05" dx="0.3" dy="1.8" layer="1" roundness="100"/>
</package>
<package name="STMICROELECTRONICS_STM32F103C8T6_2">
<description>MC-ARM-STM32F103X8_B-SQ48</description>
<wire x1="-2.65" y1="-2.65" x2="-2.65" y2="2.65" width="0.15" layer="21"/>
<wire x1="2.65" y1="-2.65" x2="2.65" y2="2.65" width="0.15" layer="21"/>
<wire x1="-2.65" y1="2.65" x2="2.65" y2="2.65" width="0.15" layer="21"/>
<wire x1="-2.65" y1="-2.65" x2="2.65" y2="-2.65" width="0.15" layer="21"/>
<wire x1="-3.5" y1="-3.5" x2="-3.5" y2="3.5" width="0.1" layer="51"/>
<wire x1="3.5" y1="-3.5" x2="3.5" y2="3.5" width="0.1" layer="51"/>
<wire x1="-3.5" y1="3.5" x2="3.5" y2="3.5" width="0.1" layer="51"/>
<wire x1="-3.5" y1="-3.5" x2="3.5" y2="-3.5" width="0.1" layer="51"/>
<wire x1="-5.65" y1="-5.65" x2="-5.65" y2="5.65" width="0.1" layer="39"/>
<wire x1="-5.65" y1="5.65" x2="5.65" y2="5.65" width="0.1" layer="39"/>
<wire x1="5.65" y1="5.65" x2="5.65" y2="-5.65" width="0.1" layer="39"/>
<wire x1="5.65" y1="-5.65" x2="-5.65" y2="-5.65" width="0.1" layer="39"/>
<text x="-6.65" y="5.65" size="1" layer="25">&gt;NAME</text>
<circle x="-4.1" y="3.45" radius="0.125" width="0.25" layer="21"/>
<circle x="-1.65" y="1.65" radius="0.3" width="0.6" layer="21"/>
<circle x="-2.6" y="2.6" radius="0.5" width="0.1" layer="51"/>
<smd name="1" x="-4.1" y="2.75" dx="0.3" dy="2.1" layer="1" roundness="100" rot="R90"/>
<smd name="2" x="-4.1" y="2.25" dx="0.3" dy="2.1" layer="1" roundness="100" rot="R90"/>
<smd name="3" x="-4.1" y="1.75" dx="0.3" dy="2.1" layer="1" roundness="100" rot="R90"/>
<smd name="4" x="-4.1" y="1.25" dx="0.3" dy="2.1" layer="1" roundness="100" rot="R90"/>
<smd name="5" x="-4.1" y="0.75" dx="0.3" dy="2.1" layer="1" roundness="100" rot="R90"/>
<smd name="6" x="-4.1" y="0.25" dx="0.3" dy="2.1" layer="1" roundness="100" rot="R90"/>
<smd name="7" x="-4.1" y="-0.25" dx="0.3" dy="2.1" layer="1" roundness="100" rot="R90"/>
<smd name="8" x="-4.1" y="-0.75" dx="0.3" dy="2.1" layer="1" roundness="100" rot="R90"/>
<smd name="9" x="-4.1" y="-1.25" dx="0.3" dy="2.1" layer="1" roundness="100" rot="R90"/>
<smd name="10" x="-4.1" y="-1.75" dx="0.3" dy="2.1" layer="1" roundness="100" rot="R90"/>
<smd name="11" x="-4.1" y="-2.25" dx="0.3" dy="2.1" layer="1" roundness="100" rot="R90"/>
<smd name="12" x="-4.1" y="-2.75" dx="0.3" dy="2.1" layer="1" roundness="100" rot="R90"/>
<smd name="13" x="-2.75" y="-4.1" dx="0.3" dy="2.1" layer="1" roundness="100"/>
<smd name="14" x="-2.25" y="-4.1" dx="0.3" dy="2.1" layer="1" roundness="100"/>
<smd name="15" x="-1.75" y="-4.1" dx="0.3" dy="2.1" layer="1" roundness="100"/>
<smd name="16" x="-1.25" y="-4.1" dx="0.3" dy="2.1" layer="1" roundness="100"/>
<smd name="17" x="-0.75" y="-4.1" dx="0.3" dy="2.1" layer="1" roundness="100"/>
<smd name="18" x="-0.25" y="-4.1" dx="0.3" dy="2.1" layer="1" roundness="100"/>
<smd name="19" x="0.25" y="-4.1" dx="0.3" dy="2.1" layer="1" roundness="100"/>
<smd name="20" x="0.75" y="-4.1" dx="0.3" dy="2.1" layer="1" roundness="100"/>
<smd name="21" x="1.25" y="-4.1" dx="0.3" dy="2.1" layer="1" roundness="100"/>
<smd name="22" x="1.75" y="-4.1" dx="0.3" dy="2.1" layer="1" roundness="100"/>
<smd name="23" x="2.25" y="-4.1" dx="0.3" dy="2.1" layer="1" roundness="100"/>
<smd name="24" x="2.75" y="-4.1" dx="0.3" dy="2.1" layer="1" roundness="100"/>
<smd name="25" x="4.1" y="-2.75" dx="0.3" dy="2.1" layer="1" roundness="100" rot="R90"/>
<smd name="26" x="4.1" y="-2.25" dx="0.3" dy="2.1" layer="1" roundness="100" rot="R90"/>
<smd name="27" x="4.1" y="-1.75" dx="0.3" dy="2.1" layer="1" roundness="100" rot="R90"/>
<smd name="28" x="4.1" y="-1.25" dx="0.3" dy="2.1" layer="1" roundness="100" rot="R90"/>
<smd name="29" x="4.1" y="-0.75" dx="0.3" dy="2.1" layer="1" roundness="100" rot="R90"/>
<smd name="30" x="4.1" y="-0.25" dx="0.3" dy="2.1" layer="1" roundness="100" rot="R90"/>
<smd name="31" x="4.1" y="0.25" dx="0.3" dy="2.1" layer="1" roundness="100" rot="R90"/>
<smd name="32" x="4.1" y="0.75" dx="0.3" dy="2.1" layer="1" roundness="100" rot="R90"/>
<smd name="33" x="4.1" y="1.25" dx="0.3" dy="2.1" layer="1" roundness="100" rot="R90"/>
<smd name="34" x="4.1" y="1.75" dx="0.3" dy="2.1" layer="1" roundness="100" rot="R90"/>
<smd name="35" x="4.1" y="2.25" dx="0.3" dy="2.1" layer="1" roundness="100" rot="R90"/>
<smd name="36" x="4.1" y="2.75" dx="0.3" dy="2.1" layer="1" roundness="100" rot="R90"/>
<smd name="37" x="2.75" y="4.1" dx="0.3" dy="2.1" layer="1" roundness="100"/>
<smd name="38" x="2.25" y="4.1" dx="0.3" dy="2.1" layer="1" roundness="100"/>
<smd name="39" x="1.75" y="4.1" dx="0.3" dy="2.1" layer="1" roundness="100"/>
<smd name="40" x="1.25" y="4.1" dx="0.3" dy="2.1" layer="1" roundness="100"/>
<smd name="41" x="0.75" y="4.1" dx="0.3" dy="2.1" layer="1" roundness="100"/>
<smd name="42" x="0.25" y="4.1" dx="0.3" dy="2.1" layer="1" roundness="100"/>
<smd name="43" x="-0.25" y="4.1" dx="0.3" dy="2.1" layer="1" roundness="100"/>
<smd name="44" x="-0.75" y="4.1" dx="0.3" dy="2.1" layer="1" roundness="100"/>
<smd name="45" x="-1.25" y="4.1" dx="0.3" dy="2.1" layer="1" roundness="100"/>
<smd name="46" x="-1.75" y="4.1" dx="0.3" dy="2.1" layer="1" roundness="100"/>
<smd name="47" x="-2.25" y="4.1" dx="0.3" dy="2.1" layer="1" roundness="100"/>
<smd name="48" x="-2.75" y="4.1" dx="0.3" dy="2.1" layer="1" roundness="100"/>
</package>
</packages>
<symbols>
<symbol name="STMICROELECTRONICS_STM32F103C8T6_0_0">
<description>MC-ARM-STM32F103X8_B-SQ48</description>
<wire x1="0" y1="-68.58" x2="0" y2="-5.08" width="0.508" layer="94"/>
<wire x1="0" y1="-5.08" x2="35.56" y2="-5.08" width="0.508" layer="94"/>
<wire x1="35.56" y1="-5.08" x2="35.56" y2="-68.58" width="0.508" layer="94"/>
<wire x1="35.56" y1="-68.58" x2="0" y2="-68.58" width="0.508" layer="94"/>
<wire x1="35.56" y1="-53.34" x2="35.56" y2="-53.34" width="0.15" layer="94"/>
<wire x1="35.56" y1="-58.42" x2="35.56" y2="-58.42" width="0.15" layer="94"/>
<wire x1="0" y1="-7.62" x2="0" y2="-7.62" width="0.15" layer="94"/>
<wire x1="0" y1="-10.16" x2="0" y2="-10.16" width="0.15" layer="94"/>
<wire x1="0" y1="-35.56" x2="0" y2="-35.56" width="0.15" layer="94"/>
<wire x1="0" y1="-38.1" x2="0" y2="-38.1" width="0.15" layer="94"/>
<wire x1="0" y1="-40.64" x2="0" y2="-40.64" width="0.15" layer="94"/>
<wire x1="0" y1="-43.18" x2="0" y2="-43.18" width="0.15" layer="94"/>
<wire x1="0" y1="-45.72" x2="0" y2="-45.72" width="0.15" layer="94"/>
<wire x1="0" y1="-48.26" x2="0" y2="-48.26" width="0.15" layer="94"/>
<wire x1="0" y1="-12.7" x2="0" y2="-12.7" width="0.15" layer="94"/>
<wire x1="0" y1="-15.24" x2="0" y2="-15.24" width="0.15" layer="94"/>
<wire x1="0" y1="-17.78" x2="0" y2="-17.78" width="0.15" layer="94"/>
<wire x1="0" y1="-20.32" x2="0" y2="-20.32" width="0.15" layer="94"/>
<wire x1="0" y1="-22.86" x2="0" y2="-22.86" width="0.15" layer="94"/>
<wire x1="0" y1="-25.4" x2="0" y2="-25.4" width="0.15" layer="94"/>
<wire x1="0" y1="-30.48" x2="0" y2="-30.48" width="0.15" layer="94"/>
<wire x1="0" y1="-33.02" x2="0" y2="-33.02" width="0.15" layer="94"/>
<wire x1="35.56" y1="-7.62" x2="35.56" y2="-7.62" width="0.15" layer="94"/>
<wire x1="35.56" y1="-10.16" x2="35.56" y2="-10.16" width="0.15" layer="94"/>
<wire x1="35.56" y1="-35.56" x2="35.56" y2="-35.56" width="0.15" layer="94"/>
<wire x1="35.56" y1="-38.1" x2="35.56" y2="-38.1" width="0.15" layer="94"/>
<wire x1="35.56" y1="-40.64" x2="35.56" y2="-40.64" width="0.15" layer="94"/>
<wire x1="35.56" y1="-43.18" x2="35.56" y2="-43.18" width="0.15" layer="94"/>
<wire x1="35.56" y1="-45.72" x2="35.56" y2="-45.72" width="0.15" layer="94"/>
<wire x1="35.56" y1="-48.26" x2="35.56" y2="-48.26" width="0.15" layer="94"/>
<wire x1="35.56" y1="-12.7" x2="35.56" y2="-12.7" width="0.15" layer="94"/>
<wire x1="35.56" y1="-15.24" x2="35.56" y2="-15.24" width="0.15" layer="94"/>
<wire x1="35.56" y1="-17.78" x2="35.56" y2="-17.78" width="0.15" layer="94"/>
<wire x1="35.56" y1="-20.32" x2="35.56" y2="-20.32" width="0.15" layer="94"/>
<wire x1="35.56" y1="-22.86" x2="35.56" y2="-22.86" width="0.15" layer="94"/>
<wire x1="35.56" y1="-25.4" x2="35.56" y2="-25.4" width="0.15" layer="94"/>
<wire x1="35.56" y1="-30.48" x2="35.56" y2="-30.48" width="0.15" layer="94"/>
<wire x1="35.56" y1="-33.02" x2="35.56" y2="-33.02" width="0.15" layer="94"/>
<wire x1="0" y1="-53.34" x2="0" y2="-53.34" width="0.15" layer="94"/>
<wire x1="0" y1="-55.88" x2="0" y2="-55.88" width="0.15" layer="94"/>
<wire x1="0" y1="-58.42" x2="0" y2="-58.42" width="0.15" layer="94"/>
<wire x1="0" y1="-63.5" x2="0" y2="-63.5" width="0.15" layer="94"/>
<wire x1="0" y1="-66.04" x2="0" y2="-66.04" width="0.15" layer="94"/>
<text x="0" y="-2.54" size="2.54" layer="95" align="top-left">&gt;NAME</text>
<text x="0" y="-73.66" size="2.54" layer="95" align="top-left">STM32F103C8T6</text>
<pin name="BOOT0" x="40.64" y="-53.34" length="middle" direction="in" rot="R180"/>
<pin name="NRST" x="40.64" y="-58.42" length="middle" rot="R180"/>
<pin name="PA0-WKUP" x="-5.08" y="-7.62" length="middle"/>
<pin name="PA1" x="-5.08" y="-10.16" length="middle"/>
<pin name="PA10" x="-5.08" y="-35.56" length="middle"/>
<pin name="PA11" x="-5.08" y="-38.1" length="middle"/>
<pin name="PA12" x="-5.08" y="-40.64" length="middle"/>
<pin name="PA13" x="-5.08" y="-43.18" length="middle"/>
<pin name="PA14" x="-5.08" y="-45.72" length="middle"/>
<pin name="PA15" x="-5.08" y="-48.26" length="middle"/>
<pin name="PA2" x="-5.08" y="-12.7" length="middle"/>
<pin name="PA3" x="-5.08" y="-15.24" length="middle"/>
<pin name="PA4" x="-5.08" y="-17.78" length="middle"/>
<pin name="PA5" x="-5.08" y="-20.32" length="middle"/>
<pin name="PA6" x="-5.08" y="-22.86" length="middle"/>
<pin name="PA7" x="-5.08" y="-25.4" length="middle"/>
<pin name="PA8" x="-5.08" y="-30.48" length="middle"/>
<pin name="PA9" x="-5.08" y="-33.02" length="middle"/>
<pin name="PB0" x="40.64" y="-7.62" length="middle" rot="R180"/>
<pin name="PB1" x="40.64" y="-10.16" length="middle" rot="R180"/>
<pin name="PB10" x="40.64" y="-35.56" length="middle" rot="R180"/>
<pin name="PB11" x="40.64" y="-38.1" length="middle" rot="R180"/>
<pin name="PB12" x="40.64" y="-40.64" length="middle" rot="R180"/>
<pin name="PB13" x="40.64" y="-43.18" length="middle" rot="R180"/>
<pin name="PB14" x="40.64" y="-45.72" length="middle" rot="R180"/>
<pin name="PB15" x="40.64" y="-48.26" length="middle" rot="R180"/>
<pin name="PB2" x="40.64" y="-12.7" length="middle" rot="R180"/>
<pin name="PB3" x="40.64" y="-15.24" length="middle" rot="R180"/>
<pin name="PB4" x="40.64" y="-17.78" length="middle" rot="R180"/>
<pin name="PB5" x="40.64" y="-20.32" length="middle" rot="R180"/>
<pin name="PB6" x="40.64" y="-22.86" length="middle" rot="R180"/>
<pin name="PB7" x="40.64" y="-25.4" length="middle" rot="R180"/>
<pin name="PB8" x="40.64" y="-30.48" length="middle" rot="R180"/>
<pin name="PB9" x="40.64" y="-33.02" length="middle" rot="R180"/>
<pin name="PC13-TAMPER-RTC" x="-5.08" y="-53.34" length="middle"/>
<pin name="PC14-OSC32_IN" x="-5.08" y="-55.88" length="middle"/>
<pin name="PC15-OSC32_OUT" x="-5.08" y="-58.42" length="middle"/>
<pin name="PD0-OSC_IN" x="-5.08" y="-63.5" length="middle"/>
<pin name="PD1-OSC_OUT" x="-5.08" y="-66.04" length="middle"/>
</symbol>
<symbol name="STMICROELECTRONICS_STM32F103C8T6_0_1">
<description>MC-ARM-STM32F103X8_B-SQ48</description>
<wire x1="0" y1="-25.4" x2="0" y2="-5.08" width="0.508" layer="94"/>
<wire x1="0" y1="-5.08" x2="20.32" y2="-5.08" width="0.508" layer="94"/>
<wire x1="20.32" y1="-5.08" x2="20.32" y2="-25.4" width="0.508" layer="94"/>
<wire x1="20.32" y1="-25.4" x2="0" y2="-25.4" width="0.508" layer="94"/>
<wire x1="0" y1="-7.62" x2="0" y2="-7.62" width="0.15" layer="94"/>
<wire x1="0" y1="-12.7" x2="0" y2="-12.7" width="0.15" layer="94"/>
<wire x1="0" y1="-15.24" x2="0" y2="-15.24" width="0.15" layer="94"/>
<wire x1="0" y1="-17.78" x2="0" y2="-17.78" width="0.15" layer="94"/>
<wire x1="0" y1="-22.86" x2="0" y2="-22.86" width="0.15" layer="94"/>
<wire x1="20.32" y1="-12.7" x2="20.32" y2="-12.7" width="0.15" layer="94"/>
<wire x1="20.32" y1="-15.24" x2="20.32" y2="-15.24" width="0.15" layer="94"/>
<wire x1="20.32" y1="-17.78" x2="20.32" y2="-17.78" width="0.15" layer="94"/>
<wire x1="20.32" y1="-22.86" x2="20.32" y2="-22.86" width="0.15" layer="94"/>
<text x="0" y="-2.54" size="2.54" layer="95" align="top-left">&gt;NAME</text>
<text x="0" y="-30.48" size="2.54" layer="95" align="top-left">STM32F103C8T6</text>
<pin name="VBAT" x="-5.08" y="-7.62" length="middle" direction="pwr"/>
<pin name="VDD_1" x="-5.08" y="-12.7" length="middle" direction="pwr"/>
<pin name="VDD_2" x="-5.08" y="-15.24" length="middle" direction="pwr"/>
<pin name="VDD_3" x="-5.08" y="-17.78" length="middle" direction="pwr"/>
<pin name="VDDA" x="-5.08" y="-22.86" length="middle" direction="pwr"/>
<pin name="VSS_1" x="25.4" y="-12.7" length="middle" direction="pwr" rot="R180"/>
<pin name="VSS_2" x="25.4" y="-15.24" length="middle" direction="pwr" rot="R180"/>
<pin name="VSS_3" x="25.4" y="-17.78" length="middle" direction="pwr" rot="R180"/>
<pin name="VSSA" x="25.4" y="-22.86" length="middle" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="STMICROELECTRONICS_STM32F103C8T6" prefix="U">
<description>MC-ARM-STM32F103X8_B-SQ48</description>
<gates>
<gate name="A" symbol="STMICROELECTRONICS_STM32F103C8T6_0_0" x="0" y="0"/>
<gate name="B" symbol="STMICROELECTRONICS_STM32F103C8T6_0_1" x="55.56" y="0"/>
</gates>
<devices>
<device name="STMICROELECTRONICS_STM32F103C8T6_0_0" package="STMICROELECTRONICS_STM32F103C8T6_0">
<connects>
<connect gate="A" pin="BOOT0" pad="44"/>
<connect gate="A" pin="NRST" pad="7"/>
<connect gate="A" pin="PA0-WKUP" pad="10"/>
<connect gate="A" pin="PA1" pad="11"/>
<connect gate="A" pin="PA10" pad="31"/>
<connect gate="A" pin="PA11" pad="32"/>
<connect gate="A" pin="PA12" pad="33"/>
<connect gate="A" pin="PA13" pad="34"/>
<connect gate="A" pin="PA14" pad="37"/>
<connect gate="A" pin="PA15" pad="38"/>
<connect gate="A" pin="PA2" pad="12"/>
<connect gate="A" pin="PA3" pad="13"/>
<connect gate="A" pin="PA4" pad="14"/>
<connect gate="A" pin="PA5" pad="15"/>
<connect gate="A" pin="PA6" pad="16"/>
<connect gate="A" pin="PA7" pad="17"/>
<connect gate="A" pin="PA8" pad="29"/>
<connect gate="A" pin="PA9" pad="30"/>
<connect gate="A" pin="PB0" pad="18"/>
<connect gate="A" pin="PB1" pad="19"/>
<connect gate="A" pin="PB10" pad="21"/>
<connect gate="A" pin="PB11" pad="22"/>
<connect gate="A" pin="PB12" pad="25"/>
<connect gate="A" pin="PB13" pad="26"/>
<connect gate="A" pin="PB14" pad="27"/>
<connect gate="A" pin="PB15" pad="28"/>
<connect gate="A" pin="PB2" pad="20"/>
<connect gate="A" pin="PB3" pad="39"/>
<connect gate="A" pin="PB4" pad="40"/>
<connect gate="A" pin="PB5" pad="41"/>
<connect gate="A" pin="PB6" pad="42"/>
<connect gate="A" pin="PB7" pad="43"/>
<connect gate="A" pin="PB8" pad="45"/>
<connect gate="A" pin="PB9" pad="46"/>
<connect gate="A" pin="PC13-TAMPER-RTC" pad="2"/>
<connect gate="A" pin="PC14-OSC32_IN" pad="3"/>
<connect gate="A" pin="PC15-OSC32_OUT" pad="4"/>
<connect gate="A" pin="PD0-OSC_IN" pad="5"/>
<connect gate="A" pin="PD1-OSC_OUT" pad="6"/>
<connect gate="B" pin="VBAT" pad="1"/>
<connect gate="B" pin="VDDA" pad="9"/>
<connect gate="B" pin="VDD_1" pad="24"/>
<connect gate="B" pin="VDD_2" pad="36"/>
<connect gate="B" pin="VDD_3" pad="48"/>
<connect gate="B" pin="VSSA" pad="8"/>
<connect gate="B" pin="VSS_1" pad="23"/>
<connect gate="B" pin="VSS_2" pad="35"/>
<connect gate="B" pin="VSS_3" pad="47"/>
</connects>
<technologies>
<technology name="">
<attribute name="AD_CONVERTER" value="2x12-bit (10 Channel)"/>
<attribute name="CIIVA_IDS" value="2386704"/>
<attribute name="COMPONENT_LINK_1_DESCRIPTION" value="Manufacturer URL"/>
<attribute name="COMPONENT_LINK_1_URL" value="http://www.st.com/web/en/home.html"/>
<attribute name="COMPONENT_LINK_3_DESCRIPTION" value="Package Specification"/>
<attribute name="COMPONENT_LINK_3_URL" value="http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00058181.pdf"/>
<attribute name="CORE" value="ARM Cortex-M3"/>
<attribute name="DATASHEET" value="http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf"/>
<attribute name="DATASHEET_VERSION" value="Rev. 16"/>
<attribute name="FLASH_SIZE_PROG_KB" value="64"/>
<attribute name="FOOTPRINT_VARIANT_NAME_0" value="Level C"/>
<attribute name="FOOTPRINT_VARIANT_NAME_1" value="Level B"/>
<attribute name="FOOTPRINT_VARIANT_NAME_2" value="Level A"/>
<attribute name="IMPORTED" value="yes"/>
<attribute name="IMPORTED_FROM" value="vault"/>
<attribute name="IMPORT_TS" value="1521868154"/>
<attribute name="INTERNAL_RAM_SIZE_KB" value="20"/>
<attribute name="IOS_HIGH_CURRENT" value="37"/>
<attribute name="MF" value="STMicroelectronics"/>
<attribute name="MOUNTING_TECHNOLOGY" value="Surface Mount"/>
<attribute name="MPN" value="STM32F103C8T6"/>
<attribute name="OPERATING_FREQUENCYF_PROCESSOR_SPEED_MHZ" value="72"/>
<attribute name="PACKAGE" value="LQFP48"/>
<attribute name="PACKAGE_DESCRIPTION" value="48-Pin Low Profile Quad Flat Package, 7 x 7 mm Body, 0.5 mm Pitch"/>
<attribute name="PACKAGE_VERSION" value="Rev. 6, 06/2013"/>
<attribute name="PACKING" value="Tray"/>
<attribute name="PREFIX" value="U"/>
<attribute name="RELEASE_DATE" value="1387182656"/>
<attribute name="SUPPLY_VOLTAGEVCC_MIN_V" value="2"/>
<attribute name="VAULT_GUID" value="5676E1B9-8AC9-43C7-8422-60B8A52E6342"/>
<attribute name="VAULT_REVISION" value="8701FB9E-FAC1-4E21-B559-DB18E20ECA41"/>
</technology>
</technologies>
</device>
<device name="STMICROELECTRONICS_STM32F103C8T6_0_1" package="STMICROELECTRONICS_STM32F103C8T6_1">
<connects>
<connect gate="A" pin="BOOT0" pad="44"/>
<connect gate="A" pin="NRST" pad="7"/>
<connect gate="A" pin="PA0-WKUP" pad="10"/>
<connect gate="A" pin="PA1" pad="11"/>
<connect gate="A" pin="PA10" pad="31"/>
<connect gate="A" pin="PA11" pad="32"/>
<connect gate="A" pin="PA12" pad="33"/>
<connect gate="A" pin="PA13" pad="34"/>
<connect gate="A" pin="PA14" pad="37"/>
<connect gate="A" pin="PA15" pad="38"/>
<connect gate="A" pin="PA2" pad="12"/>
<connect gate="A" pin="PA3" pad="13"/>
<connect gate="A" pin="PA4" pad="14"/>
<connect gate="A" pin="PA5" pad="15"/>
<connect gate="A" pin="PA6" pad="16"/>
<connect gate="A" pin="PA7" pad="17"/>
<connect gate="A" pin="PA8" pad="29"/>
<connect gate="A" pin="PA9" pad="30"/>
<connect gate="A" pin="PB0" pad="18"/>
<connect gate="A" pin="PB1" pad="19"/>
<connect gate="A" pin="PB10" pad="21"/>
<connect gate="A" pin="PB11" pad="22"/>
<connect gate="A" pin="PB12" pad="25"/>
<connect gate="A" pin="PB13" pad="26"/>
<connect gate="A" pin="PB14" pad="27"/>
<connect gate="A" pin="PB15" pad="28"/>
<connect gate="A" pin="PB2" pad="20"/>
<connect gate="A" pin="PB3" pad="39"/>
<connect gate="A" pin="PB4" pad="40"/>
<connect gate="A" pin="PB5" pad="41"/>
<connect gate="A" pin="PB6" pad="42"/>
<connect gate="A" pin="PB7" pad="43"/>
<connect gate="A" pin="PB8" pad="45"/>
<connect gate="A" pin="PB9" pad="46"/>
<connect gate="A" pin="PC13-TAMPER-RTC" pad="2"/>
<connect gate="A" pin="PC14-OSC32_IN" pad="3"/>
<connect gate="A" pin="PC15-OSC32_OUT" pad="4"/>
<connect gate="A" pin="PD0-OSC_IN" pad="5"/>
<connect gate="A" pin="PD1-OSC_OUT" pad="6"/>
<connect gate="B" pin="VBAT" pad="1"/>
<connect gate="B" pin="VDDA" pad="9"/>
<connect gate="B" pin="VDD_1" pad="24"/>
<connect gate="B" pin="VDD_2" pad="36"/>
<connect gate="B" pin="VDD_3" pad="48"/>
<connect gate="B" pin="VSSA" pad="8"/>
<connect gate="B" pin="VSS_1" pad="23"/>
<connect gate="B" pin="VSS_2" pad="35"/>
<connect gate="B" pin="VSS_3" pad="47"/>
</connects>
<technologies>
<technology name="">
<attribute name="AD_CONVERTER" value="2x12-bit (10 Channel)"/>
<attribute name="CIIVA_IDS" value="2386704"/>
<attribute name="COMPONENT_LINK_1_DESCRIPTION" value="Manufacturer URL"/>
<attribute name="COMPONENT_LINK_1_URL" value="http://www.st.com/web/en/home.html"/>
<attribute name="COMPONENT_LINK_3_DESCRIPTION" value="Package Specification"/>
<attribute name="COMPONENT_LINK_3_URL" value="http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00058181.pdf"/>
<attribute name="CORE" value="ARM Cortex-M3"/>
<attribute name="DATASHEET" value="http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf"/>
<attribute name="DATASHEET_VERSION" value="Rev. 16"/>
<attribute name="FLASH_SIZE_PROG_KB" value="64"/>
<attribute name="FOOTPRINT_VARIANT_NAME_0" value="Level C"/>
<attribute name="FOOTPRINT_VARIANT_NAME_1" value="Level B"/>
<attribute name="FOOTPRINT_VARIANT_NAME_2" value="Level A"/>
<attribute name="IMPORTED" value="yes"/>
<attribute name="IMPORTED_FROM" value="vault"/>
<attribute name="IMPORT_TS" value="1521868154"/>
<attribute name="INTERNAL_RAM_SIZE_KB" value="20"/>
<attribute name="IOS_HIGH_CURRENT" value="37"/>
<attribute name="MF" value="STMicroelectronics"/>
<attribute name="MOUNTING_TECHNOLOGY" value="Surface Mount"/>
<attribute name="MPN" value="STM32F103C8T6"/>
<attribute name="OPERATING_FREQUENCYF_PROCESSOR_SPEED_MHZ" value="72"/>
<attribute name="PACKAGE" value="LQFP48"/>
<attribute name="PACKAGE_DESCRIPTION" value="48-Pin Low Profile Quad Flat Package, 7 x 7 mm Body, 0.5 mm Pitch"/>
<attribute name="PACKAGE_VERSION" value="Rev. 6, 06/2013"/>
<attribute name="PACKING" value="Tray"/>
<attribute name="PREFIX" value="U"/>
<attribute name="RELEASE_DATE" value="1387182656"/>
<attribute name="SUPPLY_VOLTAGEVCC_MIN_V" value="2"/>
<attribute name="VAULT_GUID" value="5676E1B9-8AC9-43C7-8422-60B8A52E6342"/>
<attribute name="VAULT_REVISION" value="8701FB9E-FAC1-4E21-B559-DB18E20ECA41"/>
</technology>
</technologies>
</device>
<device name="STMICROELECTRONICS_STM32F103C8T6_0_2" package="STMICROELECTRONICS_STM32F103C8T6_2">
<connects>
<connect gate="A" pin="BOOT0" pad="44"/>
<connect gate="A" pin="NRST" pad="7"/>
<connect gate="A" pin="PA0-WKUP" pad="10"/>
<connect gate="A" pin="PA1" pad="11"/>
<connect gate="A" pin="PA10" pad="31"/>
<connect gate="A" pin="PA11" pad="32"/>
<connect gate="A" pin="PA12" pad="33"/>
<connect gate="A" pin="PA13" pad="34"/>
<connect gate="A" pin="PA14" pad="37"/>
<connect gate="A" pin="PA15" pad="38"/>
<connect gate="A" pin="PA2" pad="12"/>
<connect gate="A" pin="PA3" pad="13"/>
<connect gate="A" pin="PA4" pad="14"/>
<connect gate="A" pin="PA5" pad="15"/>
<connect gate="A" pin="PA6" pad="16"/>
<connect gate="A" pin="PA7" pad="17"/>
<connect gate="A" pin="PA8" pad="29"/>
<connect gate="A" pin="PA9" pad="30"/>
<connect gate="A" pin="PB0" pad="18"/>
<connect gate="A" pin="PB1" pad="19"/>
<connect gate="A" pin="PB10" pad="21"/>
<connect gate="A" pin="PB11" pad="22"/>
<connect gate="A" pin="PB12" pad="25"/>
<connect gate="A" pin="PB13" pad="26"/>
<connect gate="A" pin="PB14" pad="27"/>
<connect gate="A" pin="PB15" pad="28"/>
<connect gate="A" pin="PB2" pad="20"/>
<connect gate="A" pin="PB3" pad="39"/>
<connect gate="A" pin="PB4" pad="40"/>
<connect gate="A" pin="PB5" pad="41"/>
<connect gate="A" pin="PB6" pad="42"/>
<connect gate="A" pin="PB7" pad="43"/>
<connect gate="A" pin="PB8" pad="45"/>
<connect gate="A" pin="PB9" pad="46"/>
<connect gate="A" pin="PC13-TAMPER-RTC" pad="2"/>
<connect gate="A" pin="PC14-OSC32_IN" pad="3"/>
<connect gate="A" pin="PC15-OSC32_OUT" pad="4"/>
<connect gate="A" pin="PD0-OSC_IN" pad="5"/>
<connect gate="A" pin="PD1-OSC_OUT" pad="6"/>
<connect gate="B" pin="VBAT" pad="1"/>
<connect gate="B" pin="VDDA" pad="9"/>
<connect gate="B" pin="VDD_1" pad="24"/>
<connect gate="B" pin="VDD_2" pad="36"/>
<connect gate="B" pin="VDD_3" pad="48"/>
<connect gate="B" pin="VSSA" pad="8"/>
<connect gate="B" pin="VSS_1" pad="23"/>
<connect gate="B" pin="VSS_2" pad="35"/>
<connect gate="B" pin="VSS_3" pad="47"/>
</connects>
<technologies>
<technology name="">
<attribute name="AD_CONVERTER" value="2x12-bit (10 Channel)"/>
<attribute name="CIIVA_IDS" value="2386704"/>
<attribute name="COMPONENT_LINK_1_DESCRIPTION" value="Manufacturer URL"/>
<attribute name="COMPONENT_LINK_1_URL" value="http://www.st.com/web/en/home.html"/>
<attribute name="COMPONENT_LINK_3_DESCRIPTION" value="Package Specification"/>
<attribute name="COMPONENT_LINK_3_URL" value="http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00058181.pdf"/>
<attribute name="CORE" value="ARM Cortex-M3"/>
<attribute name="DATASHEET" value="http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf"/>
<attribute name="DATASHEET_VERSION" value="Rev. 16"/>
<attribute name="FLASH_SIZE_PROG_KB" value="64"/>
<attribute name="FOOTPRINT_VARIANT_NAME_0" value="Level C"/>
<attribute name="FOOTPRINT_VARIANT_NAME_1" value="Level B"/>
<attribute name="FOOTPRINT_VARIANT_NAME_2" value="Level A"/>
<attribute name="IMPORTED" value="yes"/>
<attribute name="IMPORTED_FROM" value="vault"/>
<attribute name="IMPORT_TS" value="1521868154"/>
<attribute name="INTERNAL_RAM_SIZE_KB" value="20"/>
<attribute name="IOS_HIGH_CURRENT" value="37"/>
<attribute name="MF" value="STMicroelectronics"/>
<attribute name="MOUNTING_TECHNOLOGY" value="Surface Mount"/>
<attribute name="MPN" value="STM32F103C8T6"/>
<attribute name="OPERATING_FREQUENCYF_PROCESSOR_SPEED_MHZ" value="72"/>
<attribute name="PACKAGE" value="LQFP48"/>
<attribute name="PACKAGE_DESCRIPTION" value="48-Pin Low Profile Quad Flat Package, 7 x 7 mm Body, 0.5 mm Pitch"/>
<attribute name="PACKAGE_VERSION" value="Rev. 6, 06/2013"/>
<attribute name="PACKING" value="Tray"/>
<attribute name="PREFIX" value="U"/>
<attribute name="RELEASE_DATE" value="1387182656"/>
<attribute name="SUPPLY_VOLTAGEVCC_MIN_V" value="2"/>
<attribute name="VAULT_GUID" value="5676E1B9-8AC9-43C7-8422-60B8A52E6342"/>
<attribute name="VAULT_REVISION" value="8701FB9E-FAC1-4E21-B559-DB18E20ECA41"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="STMicroelectronics - STM32F103C8T6" deviceset="STMICROELECTRONICS_STM32F103C8T6" device="STMICROELECTRONICS_STM32F103C8T6_0_1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="A" x="78.74" y="119.38" smashed="yes">
<attribute name="NAME" x="78.74" y="116.84" size="2.54" layer="95" align="top-left"/>
</instance>
<instance part="U1" gate="B" x="144.78" y="116.84" smashed="yes">
<attribute name="NAME" x="144.78" y="114.3" size="2.54" layer="95" align="top-left"/>
</instance>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
