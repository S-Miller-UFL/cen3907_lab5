��USBSUPT1 0.07, (C) 2007-2009, Bret E. Johnson.

 This program is designed as a Support Program, to be called from
  "inside" some of my other USB-related Programs.  Because it is designed
  to called from "inside" another program, it does not have all of the
  nice things that a "real", stand-alone program should have.
  However it does contain a lot of useful/interesting tidbits of information.

I should warn you that if you're not pretty familiar with the technical
  details of how USB is organized, this information may actually confuse you
  more than it helps you, but it's still there for your viewing pleasure.

If the Option asks for number(s) to be entered (#), they can generally be
  entered in decimal (0-65535) or in hexadecimal (0h-FFFFh).  The exception
  to this is #Segment:#Offset, which must ALWAYS be in hexadecimal.
  If you leave number(s) out, ALL possible values will usually be displayed.

If running from inside another program (if not running from the command-line),
  the number(s) can be followed with a hex call-back address (#Segment:#Offset)
  to which the output will be written.  See USBSUPT1.DOC for details.


GENERAL USB DESCRIPTORS (Device, Config, Interface, EndPoint):
  DeviceClass       #Class
  DeviceSubClass    #Class #SubClass
  DeviceProtocol    #Class #SubClass #Protocol
  InterfaceClass    #Class
  InterfaceSubClass #Class #SubClass
  InterfaceProtocol #Class #SubClass #Protocol
  DeviceDescription #DClass #DSubClass #DProtocol #IClass #ISubClass #IProtocol
  DescriptorType    #Type
  Vendor            #Vendor
  Descriptor        #Segment:#Offset #HostIndex #DvcAddress

HID (HUMAN INTERFACE DEVICE) DESCRIPTORS:
  PhysicalBias       #Bias
  PhysicalDesignator #Designator
  PhysicalQualifier  #Qualifier
  PhysicalDescriptor #Segment:#Offset
  ReportCollection   #Collection
  ReportDelimiter    #Delimiter
  ReportTag          #Tag
  ReportDescriptor   #Segment:#Offset
  UsagePage          #UsagePage
  Usage              #UsagePage #Usage

OTHER/MISCELLANEOUS:
  Aliases
  Country        #Country
  Language       #Language
  Dialect        #Language #Dialect
  StringLanguage #StringLanguage
  Int14Structure #Segment:#Offset
  ControlPacket  #Segment:#Offset
  Int14ErrorCode #Int14ErrorCode
  TDStatusCode   #TDStatusCode
 You must be using DOS version 3.00 or later to use this program. The CPU in the computer must be at least an 80386. USBSUPT1 0000_0000 
   ,  ??? Illegal Attributes Unknown! Unknown Illegal  Attribute   Language  Dialect  (  mA)  (  mS) Monophonic None Unavailable Alternate Interface =  EndPoint =  Address =  Language =  Configuration =  Feature =  =  __Unknown Data Reserved Descr Total Length 
 MORE   (Esc stops Pausing, Ctrl-C stops Completely, any other Continues)  MORE                                                                    
                                                                                                         ALIASES FOR COMMAND-LINE OPTIONS
�������������������������������������������������������������������������������
                                                                                                                                                                        �� VENDORID.COM UNI2ASCI.COM HIDSUPT1.COM PATH=Path=��~                                                                                                                USB A USB PhysicalBias PhysicalDescr PhysicalDesignator PhysicalQualifier RptCollection RptDelimiter RptDescr RptTag Usage UsagePage Error! Need Support File            ����COMMAND CMD NDOS 4DOS 4NT 4OS2  �                                                                � 	�                                                                                                                                                                                                                                                                 ��       Vendr Vendor  UsagePage  Usage  Test  2TDStsCode TDSts TDStatusCode TDStatus  StringLanguage StringLang  SetupPkt SetupPacket  RptTag  RptDescriptor RptDescr  RptDelimiter  RptCollection  ReportTag  ReportDescriptor ReportDescr  ReportDelimiter  ReportCollection  PhysicalQualifier  PhysicalDesignator  PhysicalDescriptor PhysicalDescr  PhysicalBias  OptionAliases OptionAlias  Language Lang  IntfSubClass  IntfProtocol  IntfClass Intf  Interrupt14Structure Interrupt14Struc  Interrupt14RequestStructure Interrupt14RequestStruc  Interrupt14RequestError Interrupt14RequestErr  Interrupt14Request  Interrupt14ReqStructure Interrupt14ReqStruc  Interrupt14ReqErrorCode Interrupt14ReqError  Interrupt14ReqErrCode Interrupt14ReqErr  Interrupt14Req  Interrupt14ErrorCode Interrupt14Error  Interrupt14ErrCode Interrupt14Err  InterfaceSubClass  InterfaceProtocol  InterfaceClass Interface  Int14Structure Int14Struc  Int14RequestStructure Int14RequestStruc  Int14RequestError Int14RequestErr  Int14Request  Int14ReqStructure Int14ReqStruc  Int14ReqErrorCode Int14ReqError  Int14ReqErrCode Int14ReqErr  Int14Req  Int14ErrorCode Int14Error  Int14ErrCode Int14Err  DvcSubClass  	DvcProtocol  DvcDescription  DvcClass Dvc  Dialect  
DeviceSubClass  	DeviceProtocol  DeviceDescription  DeviceClass Device  DescrType DescriptorType  Descriptor Descr  CtrlSetupPkt CtrlSetupPacket CtrlPkt CtrlPacket Ctrl  CtlSetupPkt CtlSetupPacket CtlPkt CtlPacket Ctl  Country  ControlSetupPkt ControlSetupPacket ControlPkt ControlPacket Control  CommandLineAliases CommandLineAlias  CmdLineAliases CmdLineAlias  Aliases Alias   ߋ^�1��6�;���	E�@�
J�O�d�T�^�Y�c�*�j�0�6�<�B�p�H���ŊN�T�x�2Ć  ID                   USB VENDOR
�����  ����������������������������������������
 bNAK Stalled Ctrl/Bulk Timed Out Int/Isoch OverDue Short Packet Babble CRC/Timeout Bit-Stuffing Data Buffer    Error in Setup Stage Device Removed  Large Call ACK (Success)   No Error (Success)  Insufficient Resources/Memory  Unknown/Hardware Problem with Host  Request Type recognized, not Supported  Invalid Request Type  Invalid Flags  Invalid Host Index  Invalid Device Address  Invalid EndPoint / Hub Port / Alt Intf  Invalid Config / Closure / DataX Value  Invalid Interface Number  Invalid Search Index  Invalid Vendor ID  Invalid Device / Interface Value  Invalid Request Handle  Invalid Periodicity / Beep Frequency  Invalid Timeout  Invalid Data Address  Invalid Data Size ! Invalid CallBack Addr / Large Rtn Code " Invalid User Packet ID # Invalid Setup Request Data $ Invalid Frame Timing / Frame Index % Invalid Entry in Isochronous Array Data 1 Host is Halted/Suspended 2 Interface not found 3 Interface on Device is being Configured 4 Interface already Registered 5 Host Run/Stop/etc. already running 6 Per-Port-Power not Supported by Hub 7 Another Beep Request is in progress A Tried to Single Step with No Debug Mode Q Problem with Frame Timing Owner R Frame Timing is already at the Limit S Timing Change already in progress   �Ց INTERRUPT 14h USB REQUEST R�Request Type [�Flags ��Host Index  �Device/Hub Address  �EndPoint/Port/AltIntf  �Config/CloseID/DataX  �Interface Number 6�  �Search Index d�Vendor ID ��Product ID ��Device Class ��Device SubClass ��Device Protocol ��Interface Class ŔInterface SubClass ϔInterface Protocol 6� '�Request Handle Num '�Periodicity/Frequency �Timeout (DeciSeconds) ��Data Address '�Data Size d�CallBack Addr/RtnCode '�User Packet ID 6� H�Setup Request Type Q�Setup Request k�Setup Request Value �Setup Request Index '�Setup Request Length 6� '�Frame Timing/Index d�Isoch Schedule Addr 6� ��   Direction =   Out (Host to Device In (Device to Host )   Full-Speed Device (12Mbps) Low-Speed Device (1.5Mbps) Hi-Speed Device (480Mbps) Illegal Speed Code!    8  No  Auto-Retries for Control Requests      No  Auto-Retries for Short Packet Errors @Use   Next Available Frame @Specific Frame Number  �Data Address is   Segment:Offset �is 32-bit Physical   � Get Host Software Info Get Host Hardware Info Get Host Vendor Info Get Host Status Start/Run/Resume Host 	Stop Host 
Reset Host Global Suspend on Host Force Global Resume on Host Register as Frame Timing Owner UnRegister as Frame Timing Owner Increment (Slow Down) Frame Timing Decrement (Speed Up) Frame Timing Change Frame Timing (by Large Amount) !Get Hub Info for Device $Hub has Detected a New Device %Device has been Disconnected from Hub 'Send Hub Characteristics to Host (Enable Device given Hub Addr & Port )Disable Device given Hub Addr & Port *Reset Device given Hub Addr & Port +Suspend Device given Hub Addr & Port ,Resume Device given Hub Addr & Port -Power On Device given Hub Addr & Port .Power Off Device given Hub Addr & Port /Power Reset Device given Hub Addr & Port 1Get Power Info for Device 2Get Power Draw Info for Hub/Port =Power On Device given Device Addr >Power Off Device given Device Addr ?Power Reset Device given Device Addr AGet Device Class Info BGet Device Vendor Info CGet Device Status HEnable/Resume Device given Device Addr IDisable Device given Device Addr JReset Device given Device Addr KSuspend Device given Device Addr LResume Device given Device Addr QInterface is being Configured RInterface Configuration is Completed XSet/Change Device Configuration Value bLook for Registered Interface cLook for Unregistered Interface dRegister as Interface/Device0 Owner eUnRegister as Interface/Device0 Owner hNotify Current Intf Owner to Unregister qGet Alternate Interface Info �Get Current DataX Value �Increment/Toggle DataX Value �Schedule Isochronous Packet �Schedule Periodic Interrupt Packet �Send Control (Setup) Packet �Send Bulk Packet �Schedule One-time Interrupt Packet �Close Scheduled Packet Handle �Change Periodicity of Periodic Interrupt �Get Status of Packet Transaction �A Large Call has been completed �Beep the Speaker �New Host Driver has been installed �Host Driver is being removed from Memory �Inform Hosts of Device 0 Registry �Inform Hosts of Device 0 UnRegistry �Copy New Device Notification Table �Put Host in Debug Mode (UHCI) �Single-Step Host (UHCI) �Unknown Request Type   Any/All Hosts Any Vendor Any Product Any Device Class Any Device SubClass Any Device Protocol Any Interface Class Any Interface SubClass Any Interface Protocol Use Default Ց CONTROL (SETUP) PACKET H�Setup Request Type Q�Setup Request k�Setup Request Value �Setup Request Index '��Setup Request Length   Recipient =   Device Interface EndPoint Other Unknown  `Category  =   Standard  Class @Vendor `Unknown  �Direction =   Out �In   �  Get Status Clear Feature Get State Set Feature Set Address Get Descriptor Set Descriptor Get Configuration 	Set Configuration 
Get Interface Set Interface Synchronize Frame �Unknown Request Type   ����ɓߓߓ	ϓՓ Remote Wakeup Test Mode Device B HNP Enable Device A HNP Support Device A HNP Alternate Support  � � Halt End Point  �Device Configuration String Interface EndPoint Device Qualifier Other Speed Configuration Interface Power (obsolete) 	On-The-Go 
Debug Interface Association Wireless USB Security Wireless USB Key Wireless USB Encryption Type Wireless USB Binary-device Object Store Wireless USB Device Capability Wireless USB Endpoint Companion  �HID (Human Interface Device) Hub "Report #Physical  �          ��� �����Q��� ����2T��� ����3U��� ����xY��������2U��������yY��
������zY���������{Y���������Z���������Z���������Z���������Z	���������	Z���������wZ���������xZ���������yZ���������zZ ՑBUNKNOWN DESCRIPTOR   ՑBDEVICE DESCRIPTOR �USB Release 5�Device Class c�Device SubClass u�Device Protocol  �Max Packet Size EP0 0�Vendor ID '�Product ID !�Device Release Q�Manufacturer String Q�Product String Q�Serial # String  �# of Configs   ՑBCONFIGURATION DESCRIPTOR я  �# of Interfaces  �Configuration Value Q�Configuration String ֑Attributes ߑCurrent Draw / 2   ՑBSTRING DESCRIPTOR V��   ՑBINTERFACE DESCRIPTOR  �Interface Number  �Alternate Setting  �# of End Points >�Interface Class l�Interface SubClass ~�Interface Protocol Q�Interface String   ՑBEND POINT DESCRIPTOR ��End Point Number �Attributes '�Max Packet Size  �Max Poll Interval "�Refresh Rate (2^n)  �Synch End Point   ՑBDEVICE QUALIFIER DESCRIPTOR !�USB Release 5�Device Class c�Device SubClass u�Device Protocol  �Max Packet Size  �# of Configs  �Reserved   ՑBOTHER SPEED CONFIG DESCRIPTOR я  �# of Interfaces  �Configuration Value Q�Configuration String ֑Attributes ߑCurrent Draw / 2   ՑBINTERFACE POWER DESCRIPTOR   	ՑBON-THE-GO DESCRIPTOR B�Attributes   
ՑBDEBUG DESCRIPTOR  �Debug In EndPoint  �Debug Out EndPoint   ՑBINTERFACE ASSOCIATION DESCRIPTOR  �First Interface  �# of Interfaces A�Interface Class o�Interface SubClass ��Interface Protocol Q�Function String   ՑBWUSB SECURITY DESCRIPTOR   ՑBWUSB KEY DESCRIPTOR   ՑBWUSB ENCRYPTION TYPE DESCRIPTOR   ՑBWUSB BINARY OBJECT STORE DESCR я  �# of Capability Descrs   ՑBWUSB DEVICE CAPABILITY DESCR   ՑBWUSB ENDPOINT COMPANION DESCR       Unit ID Terminal ID Input Entity ID Source Entity ID Clock Source ID Unit String Terminal String # of Input Pins Audio  Stream Interface ID # of Channels Spatial Config Chan Name String Supported Controls Clock Source ID Input -> Output Ctl  ->  Not Programmable Controls on Chan # of Control Bytes Number of Modes Channels in Mode  Undefined !Device "Configuration #String $Interface %EndPoint  � USB Undefined USB Streaming �USB Vendor-Specific  Input Undefined Generic Microphone Desktop/Monitor Microphone Head-mounted or Clip-on Mic Multiple Spkrs/Long Range Mic Microphone Array Processing Microphone Array  Output Undefined Generic Speaker Headphones/Head-mounted Head-mounted VR Display Audio Desktop/Monitor Speaker Room Speaker Voice Communications Speaker Subwoofer  Bidirectional Undefined Hand-held Device Head-mounted Device Hands-free w/ no Echo Reduction Hands-free w/ Echo Supression Hands-free w/ Echo Cancellation  Telephony Undefined Analog Phone or ISDN Line, Telephone-type Device Standard Phone Set  External Undefined Generic Analog Connector Generic Digital Audio Interface Standard Analog Line Connector Legacy Line Out from Computer  S/PDIF Digital Audio Interface Audio Stream on 1394 Bus Soundtrack on 1394 Bus ADAT Lightpipe 	Tascam Digital Interface 
AES Multi-chan Audio Digital Intf  Embedded Undefined Level Calibration Noise Source Measurement Noise Source Audio CD Player or CD-ROM Digital Audio Tape Cigital Compact Cassette Compressed Audio Player Analog Audio Tape Analog Vinyl Record Player 	Video Cassette Recorder 
VideoDisc Player DVD Player Television Tuner Satellite Receiver Cable Tuner DSS Receiver AM/FM Radio Receiver AM/FM Radio Transmitter Multi-track Recording System Synthesizer Piano Guitar Percussion/Drums/Rhythm Other Musical Instrument   �dFront Left Front Right Front Center Low Frequency Effects Back Left Back Right Front Left of Center Front Right of Center Back Center Side Left Side Right Top Center Top Front Left Top Front Center Top Front Right Top Back Left Top Back Center Top Back Right Top Front Left of Center Top Front Right of Center Left Low Frequency Effects Right Low Frequency Effects Top Side Left Top Side Right Bottom Center Back Left of Center Back Right of Center     Raw Data  Undefined Control Header Input Terminal Output Terminal Mixer Unit Selector Unit Feature Unit Processing Unit Extension Unit  � Undefined General Stream Stream Format Type Stream Format Specific  �  Type I Undefined  Pulse Code Modulation  8-bit Pulse Code Modulation  IEEE Floating Point  A-Law (Non-US Telephony)  �-Law (US Telephony)  Type II Undefined MPEG AC-3   Type III Undefined  IEC61937 AC-3  IEC61937 MPEG-1 Layer 1  IEC61937 MPEG-1 Layer 2/3 or MPEG-2 No Ext  IEC61937 MPEG-2 Ext  IEC61937 MPEG-2 Layer 1 LS  IEC61937 MPEG-2 Layer 2/3 LS   � Undefined Type 1 (PCM) Type 2 (non-PCM) Type 3 (IEC61937) Type 4 (non-USB) �Extended Type 1 (PCM) �Extended Type 2 (non-PCM) �Extended Type 3 (IEC61937)  �bMute Volume Bass MidRange Treble Graphic Equalizer Automatic Gain Delay Bass Boost Loudness         Undefined  Up/Down Mix  Dolby ProLogic  3D Stereo Extender  Reverberation  Chorus  Dynamic Range Compression   �aEnable Processing Mode Select       aEnable Processing Spaciousness       aEnable Processing Reverb Type Reverb Level Reverb Time Delay Feedback    aEnable Processing Chorus Level Modulation Rate Modulation Depth     � aEnable Processing Compression Ratio Maximum Amplitude Threshold Attack Time Release Time   � a        aEnable_Processing        [B[B�B�B�B7C  Undefined General  �aSampling Freq Pitch      Max Pkt Size Only  Undefined Milliseconds Decoded PCM Samples  � Undefined Header Input Terminal Output Terminal Mixer Unit Selector Unit Feature Unit Effect Unit Processing Unit 	Extension Unit 
Clock Source Clock Selector Clock Multiplier Sample Rate Converter  � Undefined Desktop Speaker Home Theater Microphone Head Set Telephone Converter Voice/Sound Recorder I/O Box 	Musical Instrument 
Pro Audio Audio/Video Control Panel �Other  �:   Not Present Read-Only Illegal Value Programmable     Undefined  Parametric Equalizer  Reverberation  Modulation Delay  Dynamic Range Compression   �  Undefined  Up/Down Mix  Dolby ProLogic  Stereo Extender   �Clock Type:   External Internal Fixed Internal Variable Internal Programmable    Not   Synchronized to Start-of-Frame  Latency  Copy Protect Connector Overload Cluster Underflow Overflow  Copy Protect Connector Overload Underflow Overflow  Cluster Underflow Overflow  Cluster  Mute Volume Bass MidRange Treble Graphics Equalizer Automatic Gain Delay Bass Boost Loudness Input Gain Input Gain Pad Phase Inverter Underflow Overflow  Enable Center Frequency Q-Factor Gain Underflow Overflow  Enable Type Level Time Delay Feedback Pre-Delay Density High-Frequency Roll-Off Underflow Overflow  Enable Balance Rate Depth Time Feedback Level Underflow Overflow  Enable Compression Ratio Maximum Amplitude Threshold Attack Time Release Time Underflow Overflow  Enable Mode Select Cluster Underflow Overflow  Enable Width Cluster Underflow Overflow  Enable Cluster Underflow Overflow  Frequency Validity  Selector  Numerator Denominator  PR&���Z�eM��5�V�gDZX�S�ގ�S���S���S���� PR&���Z�6M��ZX[�V�-G�� ^�V�6G�� ^�V�rG�� ^�V��G�� ^�V��G�� ^�V��G�� ^�V�eH�� ^�V��H�� ^�V�I�� ^�V�EI�� ^�V��I� ^�V��I� ^�V��I� ^�V��I�r ^�V�"J�i ^�V�6J�` ^�V�@J�W ^�S��F�NO[�R��5�R��5�mL�U�b5�L5�R�6PQW
�t�ű&�G�VL��t��T����u��	��L�T�!U_YXZ�fPRW&�f%�   �6�Ǘ�9fPRW&�f%��  �6����$fPRW&f�f%��� �6�w��fPRW&f���
�Y�SQVf�   ���
t��3ɻ�E
�u�< u��
�u

�t�gT��S����w=
�u�U�rN�+�t'�JT��S��
��T��
��TfPf��f��f��f���RfXf���^Y[_ZfX�PQR&���5�YK�	T&�E��5�4K&�}u
��u�%T��_ ��S%��� &*��&�E� ZYX�fPQR&���5�K��S&f�E��5�J&�}u
f�u��S��& �S� &*��&�E�C ZYfX�fQf��  ���u+�fQf�����f�   �tf����ufPS��<f#��UL[fX��SfY�PQR��5��
�t#
�t2��
�t�1S���J�C����:�r���}J�TSZYX�fPf%��  � fX�fPfS2�f�t��f��fKf!�u�
�f[fXâL5�Q�P&�e�2��P&�e��W� 
�t��R��G��R&��v _X�PSQRU�+6��3��t�RM��u&�G���I��R� ��
��t8�vط��t:L5v�]ZY[X�QRP��� Q�?6�S���QX�LR�R�D6��s�H6�SZY�R��5�I�%BZ�PSQRW2�&�]�2�K5,���2ɺU6&��\I�u�KR�� �R���:�r�&���_ZY[X�S�A��J[�S��C��J[�SQ�.K5����J�4SQ&�M�
�u ��J��t��J��t��J��t��J��t����.K5��fPRW��2ɺU6&f��H���Q����:�r�&��5�_ZfXY[�U����U3�PSQRW&�G�f6�H�WQ�6����C�u�M5��C��8s��C&�G�H��
�&J�-Q��u�&�G��5�H�A�u3�M5<r,<w(�
Q&�G�y6�MH�ű��6��P&�GG�3H�_���:�v�_ZY[X]�PSQRW���*L5&�	
�u��J��t��J��t�K��t����6&����PGG&��Y���t+G�P&�G�y6��G�ű��6�P&f����qG�����:�v�_ZY[X�Max kbps SubSlot Size (Bytes) Resolution (Bits) # of Sample Freqs Samples per Frame Sampling Rate Type Continuous Discrete Min Sampling Rate Max Sampling Rate Sampling Rate  Hz PQRWV��P&�M�
�tp��wk��t��5� �O�P� �O�P� ���O� �yO�AP�z �pO&�G�SP��F
�u.�fP�P�YO&f��zP�RF�P�IO&f�E��P�AF��P��O�-�(�qP��O�+O�ű��P&f����9F��O��:�w�O���JO^_ZYX�SQ���� �SQ���� �SQ�i�� �
SQ�Q�� � fP&f����fXY[�$�Ց1AUDIO v1 CONTROL DESCRIPTOR WJ nJ �Audio Spec Version я 9KQ# of Stream Interfaces   $Ց1AUDIO v1 INPUT TERMINAL DESCR WJ nJ � ؎Terminal Type  �Assoc Output Term ID NL �   $Ց1AUDIO v1 OUTPUT TERMINAL DESCR WJ nJ � ؎Terminal Type  �Assoc Input Term ID � �   $Ց1AUDIO v1 MIXER UNIT DESCRIPTOR WJ nJ ߏ ?Ka NL �M�   $Ց1AUDIO v1 SELECTOR UNIT DESCRIPTOR WJ nJ ߏ ?Ka "N   $Ց1AUDIO v1 FEATURE UNIT DESCRIPTOR WJ nJ ߏ �  �Bytes per Ctl Element .N�   $Ց1AUDIO v1 PROCESSING UNIT DESCR WJ nJ ߏ ��Unit Type ?Ka NL �N�   $Ց1AUDIO v1 EXTENSION UNIT DESCR WJ nJ ߏ '�Extension Code ?Ka NL �N�    $Ց1AUDIO v1 GENERAL STREAM DESCR WJ tJ �  �Delay (Frames) �Audio Format   $Ց1AUDIO v1 STREAM FORMAT TYPE DESCR WJ tJ ��Format Type �P�   %Ց1AUDIO v1 ISOCHRONOUS ENDPT DESCR WJ �J {NAttributes �Lock Delay Units '�Lock Delay Value     $�Ց1AUDIO v2 CONTROL DESCRIPTOR WJ zJ �Audio Spec Version �Category (Primary Use) я �J   $Ց1AUDIO v2 INPUT TERMINAL DESCR WJ zJ � ؎Terminal Type  �Assoc Output Term ID � �L �J �   $Ց1AUDIO v2 OUTPUT TERMINAL DESCR WJ zJ � ؎Terminal Type  �Assoc Input Term ID � � �J �   $Ց1AUDIO v2 MIXER UNIT DESCRIPTOR WJ zJ ߏ ?Ka �L �M�   $Ց1AUDIO v2 SELECTOR UNIT DESCRIPTOR WJ zJ ߏ ?Ka �J ��   $Ց1AUDIO v2 FEATURE UNIT DESCRIPTOR WJ zJ ߏ � �N�   $Ց1AUDIO v2 EFFECT UNIT DESCRIPTOR WJ zJ ߏ �Unit Type � �N�   $Ց1AUDIO v2 PROCESS UNIT DESCRIPTOR WJ zJ ߏ �Unit Type ?Ka �L �O�   $	Ց1AUDIO v2 EXTENSION UNIT DESCRIPTOR WJ zJ ߏ '�Extension Code ?Ka �L K ��   $
Ց1AUDIO v2 CLOCK SOURCE UNIT DESCR WJ zJ ߏ 0KAttributes K  �Assoc Terminal ID ��   $Ց1AUDIO v2 CLOCK SELECTOR DESCR WJ zJ ߏ QKQ# of Clk Input Pins K ��   $Ց1AUDIO v2 CLOCK MULTIPLIER DESCR WJ zJ ߏ � 'K ��   $Ց1AUDIO v2 SAMPLE RATE CONV DESCR WJ zJ ߏ �  �Clock In Entity ID  �Clock Out Entity ID ��       !Ց1HUMAN INTERFACE DEVICE DESCR ��Descr Type !�HID Class Release /�Country Code ��S# of Classes    Class Descr Type Class Descr Size     )Ց1HUB DESCRIPTOR ��Descr Type  �# of Ports ɒHub Attributes K�Power Good Time/2 f�Current Draw y��        Descr Length Descr Type Descr SubType �  Illegal �Valid  Historical Attribute 80h @  Bus @Self  Powered    No    Remote Wakeup   Not   Battery Powered    Control Isochronous Bulk Interrupt    NonSynchronous Asynchronous Adaptive Synchronous  0  Data Explicit_Feedback  Implicit_Feedback 0Unknown_Feedback     Ganged Per-Port Ganged Per-Port  Power Switching   Stand-Alone Hub Part of Compound Device    Global Per-port No  Over-current Protection `TT Think Time <=   8  16 @24 `32  FS Bits �LEDs   Hardware �Software  Controlled  SRP (Session Request)    Not   Supported HNP (Host Negotiation)   Not   Supported  Unremovable Dvc Ports Port Power Control (Obsolete) Language ID The String 
  Neutral/Default nb Arabic �b Bulgarian �b Catalan �b Chinese �c Czech �b Danish �b German �c Greek �b	 English d
 Spanish �d Finnish �b French �e Hebrew �b Hungarian �b Icelandic �b Italian �e Japanese �b Korean f Dutch f Norwegian /f Polish �b Portugese Cf forgotten �b Romanian �b Russian �b Bosnian/Croatian/Serbian Xf Slovak �b Albanian �b Swedish g Thai �b Turkish �b  Urdu 2g! Indonesian �b" Ukrainian �b# Belarusian �b$ Slovenian �b% Estonian �b& Latvian �b' Lithuanian Fg( forgotten �b) Farsi �b* Vietnamese �b+ Armenian �b, Azeri ]g- Basque �b. forgotten �b/ Macedonian (FYROM) �b0 Sutu �b2 Setswana/Tswana (South Africa) �b4 isiXhosa/Xhosa (South Africa) �b5 isiZulu/Zulu (South Africa) �b6 Afrikaans �b7 Georgian �b8 Faeroese �b9 Hindi �b: Maltese (Malta) �b; Sami qg> Malay 
h? Kazakh �b@ Kyrgyz �bA Swahili (Kenya) �bC Uzbek *hD Tatar (Tatarstan) �bE Bengali (India) �bF Punjabi �bG Gujarati �bH Oriya �bI Tamil �bJ Telugu �bK Kannada �bL Malayalam (India) �bM Assamese �bN Marathi �bO Sanskrit �bP Mongolian �bR Welsh (United Kingdom) �bU Burmese �bV Galician �bW Konkani �bX Manipuri �bY Sindhi �bZ Syriac �b` Kashmiri >ha Nepali Hhe Divehi �bk Quechua Rhl Sesotho sa Leboa/Northern Sotho (South Africa) �b Locale Invariant �b� Maori (New Zealand) �b� USB HID Class mh  � Language Neutral Processor/User Default Language System Default Language  �No Dialects Defined  � No Dialects Allowed  �Saudi Arabia Iraq Egypt Libya Algeria Morocco Tunisia Oman 	Yemen 
Syria Jordan Lebanon Kuwait United Arab Emirates Bahrain Qatar  �Taiwan (Traditional) PRC (Simplified) Hongkong SAR, PRC Singapore Macao SAR  �Germany (Standard) Switzerland Austria Luxembourg Liechtenstein  �United States United Kingdom Australia Canada New Zealand Ireland South Africa Jamaica 	Carribean 
Belize Trinidad Zimbabwe Philippines  �Castilian (Traditional) Mexican Spain (Modern) Guatemala Costa Rica Panama Dominican Republic Venezuela 	Colombia 
Peru Argentina Ecuador Chile Uruguay Paraguay Bolivia El Salvador Honduras Nicaragua Puerto Rico  �France (Standard) Belgium Canada Switzerland Luxembourg Monaco  �Italy (Standard) Switzerland  �Korea Johab  �Netherlands Belgium  �Bokmal Nynorsk  �Brazil Portugal  �Croatian Serbian (Latin) Serbian (Cyrillic) Croatian (Bosnia & Herzegovina) Bosnian (Bosnia & Herzegovina) Serbian (Latin, Bosnia, & Herzegovina) Serbian (Cyrillic, Bosnia, & Herzegovina)  �Sweden Finland  �Pakistan India  �Lithuania Classic  �Latin Cyrillic  �Norway Northern Sweden Northern Finland Northern Lule (Norway) Lule (Sweden) Norway Southern Sweden Southern Skolt (Finland) 	Inari (Finland)  �Malaysia Brunei Darussalam  �Latin Cyrillic  �India  �India  �Bolivia Ecuador Peru  �HID Usage Data Descriptor <HID Vendor-Defined #1 =HID Vendor-Defined #2 >HID Vendor-Defined #3 ?HID Vendor-Defined #4  �	 Look at Interface 3kCommunications 3k	Hub �iPersonal Healthcare 3k�Diagnostic Device �i�Wireless Controller �i�Miscellaneous Device j�Vendor-specific Qk �	 None Cj�Vendor-specific �k �	 None okReprogrammable Diagnostic Device �j�Vendor-specific �k �	 None okRF Controller �j�Vendor-specific �k �	 None okCommon Class k�Vendor-specific �k � None Single Transaction Xlator Multiple Transaction Xlator �Vendor-specific  � None USB2 Compliance Device �Vendor-specific  � None Bluetooth Programming Interface �Vendor-specific  � None Interface Association �Vendor-specific  �	 None ok�Vendor-specific �k �	 None ok�Vendor-specific �k � None �Vendor-specific  � None �Vendor-specific  �	 None 3kAudio 
mCommunications Control ^mHID (Human Interface Device) �nPhysical 3kImaging �nPrinter �nMass Storage $o	Hub p
Communications Data ,pCCID (Chip Card Interface Device) 3kContent Security 3kVideo JpPersonal Healthcare 3k�Diagnostic Device �p�Wireless Controller �p�Miscellaneous Devices Eq�Application-specific �q�Vendor-specific Qk �	 None okAudio Control �qAudio Streaming �qMIDI Streaming ok�Vendor-specific �k �	 None okDirect Line Control okAbstract Control (modem) 1rTelephone Control okMulti-Channel Control okISDN CAPI Control okEthernet Networking Control okATM Networking Control okWireless Handset Control ok	Device Management ok
Mobile Direct Line Control okOBEX Control okEthernet Emulation �r�Vendor-specific �k �	 None okBoot s�Vendor-specific �k �	 None okStill Image Capture Fs�Vendor-specific �k �	 None okPrinter �s�Vendor-specific �k �	 None okReduced Block Commands (RBC) �sSFF-8020i, MMC-2 (ATAPI) (typically CD/DVD) �sQIC-157 (typically Tape) �sFloppy Drive (USB Floppy Interface) �sSFF-8070i (typically Floppy Drive) �sSCSI Transparent �s�Vendor-specific �k �	 None 5t�Vendor-specific �k �	 None �t�Vendor-specific �k �	 None okVideo Control okVideo Streaming okVideo Interface Collection ok�Vendor-specific �k �	 None okReprogrammable Diagnostic Device �u�Vendor-specific �k �	 None okRadio Frequency Controller #vWireless USB Wire Adapter �v�Vendor-specific �k �	 None okSynchronization? wCommon Class YwCable? �w�Vendor-specific �k �	 None okDevice Firmware Update okIrDA (InfraRed) Bridge okTest and Measurement �w�Vendor-specific �k � Audio Spec v1.0  Audio Spec v2.0 �Vendor-specific  � None AT commands V.25ter AT commands PCCA101 AT commands PCCA101+wakeup AT commands GSM AT commands 3G AT commands CDMA �Defined by Command Set Descriptor �Vendor-specific  � None Ethernet Emulation (EEM) �Vendor-specific  � None Keyboard Mouse �Vendor-specific  � None Picture Transfer Protocol (PIMA 15470) �Vendor-specific  � None Uni-Directional Bi-Directional IEEE 1284.4 compatible Bi-Directional �Vendor-specific  � Control/Bulk/Interrupt Control/Bulk PBulk-only (Zip) �Vendor-specific  � None Single Transaction Xlator Multiple Transaction Xlator �Vendor-specific  �	 None ok0I.430 ISDN BRI ok1HDLC ok2Transparent okPQ.921M (Management Protocol for Q.921) okQQ.921 (Data Link Protocol for Q.931) okRQ.921TM (TEI Multiplexor for Q.921) ok�V.42bis (Data Compression Procedures) ok�Q.931/EuroISDN ok�V.120 (V.24 rate adaptation to ISDN) ok�CAPI 2.0 ok�Host-based Driver ok�CDC PUF (Protocol Unit Functional) ok�Vendor-specific �k � None USB2 Compliance Device �Vendor-specific  � None Bluetooth Programming Interface Ultra Wideband Radio Control RNDIS �Vendor-specific  � None Host Wire Adapter Control/Data Streaming Device Wire Adapter Control/Data Streaming Device Wire Adapter Isochronous Streaming �Vendor-specific  � None Microsoft ActiveSync Palm Sync �Vendor-specific  � None Interface Association Wire Adapter Multifunction Peripheral �Vendor-specific  � None Cable Based Association �Vendor-specific  � None TMC USB488 �Vendor-specific  ���� Audio Ctl v1   ��� Audio Ctl v2   ��� Audio Strm v1  ��� Audio Strm v2  ����MIDI Stream    �����Audio Device?      Comm Device       Comm Direct Ln    Modem            Modem V.25ter    Modem PCCA101    Modem PCCA101w   Modem GSM        Modem 3G         Modem CDMA       �Modem Custom     �Modem?            Telephone Comm    MultiChan Comm    ISDN CAPI Dvc     Ethernet Dvc      ATM Device        Wirels Handset   	 Comm Dvc Mgmt    
 Mobl Direct Ln    OBEX Comm Dvc     Ethernet Emul    Ethernet Emul    �Ethernet Emul?   ��Comm Device?     
 0I.430 ISDN BRI   
 1HDLC             
 2Transp Data      
 PQ.921M ISDN      
 QQ.921 ISDN       
 RQ.921TM ISDN     
 �V.42bis          
 �Q.931/EuroISDN   
 �V.120 ISDN       
 �CAPI 2.0 ISDN    
 �Host-Based       
 �Protocol Unit    
 �Comm Device?   ���  Human Intf Dvc ���Keyboard       ���Mouse          �����Human Int Dvc? ���  Physical Dvc   �����Physical Dvc?  ���Still Image    �����Image Device?  ��� Printer        ���UniDir Printer ���BiDir Printer  ���1284.4 Printer ����Printer?       ���  Mass Storage   ��� Reduc Blk CBI  ���Reduc Blk CB   ���PReduc Blk Bulk ����Reduced Block  ��� ATAPI CBI      ���ATAPI CB       ���PATAPI Bulk     ����ATAPI (CD/DVD) ��� QIC-157 CBI    ���QIC-157 CB     ���PQIC-157 Bulk   ����QIC-157 (Tape) ��� UFI Floppy CBI ���UFI Floppy CB  ���PUFI Floppy Blk ����UFI Floppy     ��� SFF-8070i CBI  ���SFF-8070i CB   ���PSFF-8070i Bulk ����SFF-8070i Flpy ��� SCSI Trsp CBI  ���SCSI Trsp CB   ���PSCSI Trsp Bulk ����SCSI Transp    �����Mass Storage?  	  ���Hub v1 Generic 	 ���Hub v2 SinglTT 	 ���Hub v2 MultiTT 	 ����Generic Hub?   ���  Chip/SmartCard �����Chip/SmartCrd? ���  Cont Security  �����Cont Security? ���  Video Device   ��� Video Control  ��� Video Stream   ��� Video Intf Col �����Video Device?  �����Healthcare Dvc ����  Diagnostic Dvc �  ���Diagnostic Dvc ����USB2 Complianc ����USB2 Complianc ������Diagnostic?    ������Diagnostic?       �  Wireless Dvc   ����BlueTooth Dvc     �Ultra WB Radio    �Remote NDIS       �Host Wire Ctl     �Dvc Wire Ctl      �Dvc Wire Isoch ����BlueTooth Dvc   �����Wireless Dvc?  ����  Miscellaneous  �  ���Miscellaneous  ����Active Sync    ����Active Sync    ����Palm Sync      ����Palm Sync      ����Wire Adapter   ����Wire Adapter   ����Cable Assoc    ����Cable Assoc    ������Miscellaneous? ������Miscellaneous? ���� Firmware Updat ���� IrDA Bridge    ���� Test & Measure ����Test&Meas 488  ������App-Specific?  �Unknown Device  None/Not Applicable Arabic Belgian Canadian Bilingual Canadian French Czech Republic Danish Finnish French 	German 
Greek Hebrew Hungary ISO (International) Italian Japan (Katakana) Korean Latin American Dutch (Netherlands) Norwegian Persian (Farsi) Poland Portugese Russia Slovokia Spanish Swedish Swiss French Swiss German Switzerland Taiwan Turkish-Q  United Kingdom !United States "Yugoslovia #Turkish-F  �   �� fff	 f$"  $   �� $d     �� $   ��  �  � $���
$�����%�     �    	q �2	     
$ N $    $U   	$  $
    $
      	$  	    	  $  $   �� 		d   % 	  $  $   �� 		�   % 	    	  $  $   �� 	�	2   % 	  $  $   �� 	�	d   % 	  $  $   �� 	�	�   % 	    !  "9 9 # �  	
T e s t     
 	  @	d  �2	
	
 d   PQW�T�3��/�
�t���G�= t!�����O�W�w�Q�q�n�k�h��_YX��� ���; �>�N u��	����P�� 3���

�t�w���
�����L�!QWV��I��� ��
� �^_Y�PSWV�6 t%������? t�
�t:u	CG��= t�{������>��^_[X�PQWV� H�ؾ ��� �����&�>� ^_YX�PV�� �t� u�6�J��
3��M�^X�PS�'�pr��� r�Ӻ�
�� ��> �[X�PV�ĉެ:�t
FF�< u�����^X�S���"t� r
�8 �Z s�� s�����[�PV� s�� r�� s�<_t��� t���^X�PS��<0u�<0t��:<Xu�� s����N�[X�SQR��3۹ 2��j s<_t�����sN����N
�t	��z tN��������ZY[�SQR3�3۹
 �f t!,0<	wN�,02�;�s���r<w��������N���ZY[�S��� s� <Ar<Fv����,7��[�<0r<9v��,0��P�H�x :�X�� t�
��P�< t�<	t�N<X�SR�Ѐ? t22�V��L �. t��C�? u�C
�t
^�? u�CC��XK�C�u�C������Z[�P� �Ċ� :�X�PS3۸�[X�<ar<zw, �PSQ�΀>��t�z�t�! r�p�u
�����
� ������Y[X�PQR�����J�t��r���5�t<:u�5�t	�u�r����������ZYXû���0��,�+��h�&��h�+��h�!�C]������k���k���k��C]Q3��Q��Q��*Y�P�I�s��r�?����u�������� �X�P� �s�}�r����u
��
�	�� �X�PSR�R���s-�T�r(����t�u%�O�u���;��>��u���a�
���� �Z[X�PSW���E��E����r5��s"� �r= w&�E���r= w�E����u�> �t����� �_[X�W�2��W�<��
W����W�{�S��r�G����u���� �[_�PQW�!� ��r4=� w/�������u$�>��u�!� ����Y�����!� �� �_YX��m�u�2�� ��PSQRWV�x���<�t$� 3۬<�t&:u��G���u���
�����׺����^_ZY[X�RW���>��u�����D�	��<�[���5_Z�Q� ��	Q����Q3�PSR
�t
�t���
����%��C]
�t�����r
�t����
��
�t�����s
�t���i���Z[XY�PSRWV�D]��u�<�t<�؉��+�4F�< �t#���
	����+�,�_�"��a��׉���FF�^_Z[X�SRV�G���3�'�@� ^Z[�Q3�PW�:���- t�"
�u�N�	��LP��u$��X�M 8�t����_XY�PSQRWV�ω�< t�����:Du�ր< t	�5GG�t���FF�< u��  9�^_ZY[X�PSQRWV�ي������3���;�r)�5OO�
�t8�r�Q�O(��EY��(����3�,���p^_ZY[X�PQRWV��#&�
�t9�;/�� r�_ r �< t�* r� ��< t������FF��� 3�&����^_ZYX�PSQR3ɊF���3ۊ <�t&:AuC��������ZY[X�PSQU��V.�< t�L.�
 ��'C<�t:�u���
�F�������4�]Y[X�Q&��K5�L�Y�QV&��#/�<�^Y�S��6�oS��6�iS��>�cS�?�]S�i?�WS��@�QS��A�M5�HS��C�BS�D�<S�?D�6S�E�0S�	F�*S�oF�$S��,�S�7.�S�����L.S��h��O.S��k�R���R3��)	s
�u����MZ[âM.S��h��P.S��k��N.S��h��Q.S��k�QW�O�QW�OO� _Y[�PSQW�/&�
�u
��s�p���s��G&�
�u��\���G���_Y[X�PR&����ZX�R�N5�R�V5�
R�r5�R��5P&��XZ�R��5�R��5P&���> XZ��# �R.��T.PR��<w�J��K�=���CZX�PQW�L.� 3��_YX�PQRWV� ���
�t^�}�t]�}�tW��E �ىM�u�M �E;��E"  ����Q
�M �E* �l r$�=� v�� �E*�Z r��FF� ���� ��%�V�e�^_ZYX�QWV� ���3ɊL�II�^_Y�PQW3�� ��_YX�P����  ��	r�=��t��t= u�<s���Xã�PQW�
�؋��n
���<_YX�PQRV&�E�����3Ɉ��< �ͱr�8]�����\��������&��,]����GG����u�^ZYX�PSQW&�GG��r��tQWI&;tGG���_Yu�����_Y[X��S��Z�[�PR�<��;2����6��.ZX�PSR�H�"��$����>+�pZ[X�S�[�j[�PQR�������� �������ZYX�S��\�<[�PR�����2��������ZX�P���m���A��X�PSQRW&�]����\��v&�G
�u�	����߲��, s&�G�z�  r��]&��
�!]�b_ZY[X�S��[�[����A��t
P���;X�8��t����r�������i��PQRW�ű��Y&������PG��Y&��GG��:�w�;��_ZYX�QWV��#�߱�H*��^_Y�S��*�6[�S&�]���`�� u�W+�!��[�PSR&�]���`�� u�Њǻ(,���r��r�Z[X�SR�|�&�U����>,�� t��,��t��,��u�s�����Z[�R�T�
R�k�R�1�IZ�Æ��?��:���4��SR&�]���`�� u:��t��u&�}�u�_��L��!&�]�����t
��u�;���������
Z[�QWV��#�߱@�C�^_Y�S�1!�,[�S���#[�R=��u��)���u�
���Z�R=��u��)���
Z�SR� ���)�<SR�8���)�2SR�f���)�(SR�x���)�SR�A���)�SR�o��*�
SR����%*� <�u�E���Z[�R�u�<*�3��0
Z�&�E�u�a	��	�k�PSQRW� ��&��v�FGG��_ZY[X�R��(R�-�"R�@�R�R�R�`�R�v�
R�}�R��W��-V���<u��D� ^������_Z�R�m�R�PQW�v�������%����_YXZ�PSQR�t0�/��sC�u�s��u>�7
�u��s��u.S�[r�\��+�M�&�s���@�r
�u��8����� ������ZY[X�fPSQRWVU�&��3���J
��u3�,�t*�T�\�- s��(�r� �Dpu�T ������
���� ]^_ZY[fX�PS�߀�p&���Pt��`t��;��	G�Պ�������*�s
������[X�&f�
�tA��w<t1��wtf%�   �I	��f%��  �E	��f%��� �A	����	�8	�PSR�\�Àt����p��t4�T�� u�3�'��� t�Q	&��{Z� ��0t�@	�ຈZ� ���Z[X�QRW
�t2���&��l �	G��_ZY�fPQ� �@fPS�  �8fPS�  �@fPQf%��� ��dfPSf%��� � �VfPSf%��� ��MfPS��@fPS� �8fPS��5fPS� �-fPS2��fPS2��fPS2� �
fPS2� ��] ��Q Q���@��rt��t��������l�
�t�Y[fX�Q����!s����� ���7��Y�S�ٷ��S2�PQ� �t ��
�t��������<	v��<cv���:�������YX[�U3��U���PQRV�tG���F����u2�2���u����u�<�t%9�u�t�i3���t�K���D��tFF��3����^ZYX]�Q�Q3�PSRV�/��F���u�
�u�<�tV���|�����u�<�tA���m�^�������t%FF
�t�|� t�1S�\� 6�������(6�[���^Z[XY�U��
�
U��
�U��
fPSQfRWV�� ����@t	f��f�   �f����@t�<� t2�f�� f�t%�f��t�< u�  �
�t��=���a�J��^_fZY[fX]�V���< t
�t�����;��
�5�X^�fPSQRV�H ��@tf�   �f����@t�<� t(�f��= f�t�< t
�t�<���8 ������^ZY[fXÉ�3ۊF3҈ڀ�3Ɋ������uf%��  ��u2��W�����u�����u�|������_�R3��R� PSV�ފج
�u
�t�S���p����"�8�t:�t�Q���Y�8�t�D���S�<�F�< t
�t�E���^[XZ�QWV��$�� �^_Y�R��� Z�PSQR� ZY[X���P�SU�!B���PR��'
� r
��h
� s���ZX�PSQ� 0�!��= s���Y[X�PS�� s� �X	�P��X��u�����[X�PS�� �X%�P��X!�9�t�����[X�WV��� �< t���^_�W�p �<�h_�W�d �
�h_�PW�W ���:G����_X�PQW�ȹ!��>��t���=�t�E�����& O����Ǣ_YX�PQW��� ��_YX�PQ�������uO��E� YX�PV�����  �D�D�D��D�D
��D^X�`�&����� K�!r���&��M�!
�t���a��R� s���������)����Z�PV�6����t�, �l �< s5���_ �/ s(�6���t�, �J r� s&�F
�t<;u������^X�PSQR�/�!����!� N� ���!��ڴ�!�ZY[X�PSQWV��3��  ��W�_3ɬ
�t	<;t�����
�t
&�}�\t�\��ެ
�t���^_Y[X�PSQWV���, 3����3��8u�9Et%����.�?�<:t
<\t
�t�����.;?t� �.���^_Y[X�QVU��� � u�� ]^Y�PSQRWV>�F ���, �щ�3�3��ʉ��t����&8u��
&�= t>�~ >�~ �^_ZY[X�� �À>��u�I �:���M�f=��  wf=�   w�& ��' ��. ��fPf��� ��fX� �S� �S� �S� �	S� �S3�RW��
�E_��f��� Gf��� Ӏ�u�]��]��j_Z[�PS��� [XÊ�� ������ ���'@'��P���X�fP�t��fP��fPf��fPf�tx�p��ff��f@�  fX�fPS2��fPSf%��  �fPSf%��� �fPS��fPS2�3�f%��  fQfRV��
2�f� ʚ;f3�f��f�u.
�u*f��t$��uN� ��u��tf��'  v�7f��dv�/��0��z< t�,�f�� ʚ;tf��@B t	f���  u�Tf��tf��fPf3�f��f�
   f��f��fX�v�^fZfY[fX�Q���- Y�Q��!Q��Q��Q��Q��Q��Q��Q�� Y�P� � X�P���P��Q�! � YX�Q
�t2�� ��Y�R���iR���dR�:�_R��
�`R��
�ZR�{�NR�.�IR�h�DR�-�?R�+�:R�?�5R�"�0R���1R��
�+R��%R� �R��
�R��
�R�.�R�3.���
��
�\ Z�.�>��tS� �S� PQ� t�@�!YX[�R��� Z�PW��3�������I_X�QR�����A�ZY�� ����R��� ZÃ>��t�>��tPSQRWVU��]^_ZY[X��� �R��
� Z�PSQWV���<�tj�< tb�h s�  �W�z ���@AA�>�σ�H9�r"��
�� Q+���A�����Y�<�t$�< t�.�������;�sH�����^_Y[X�PSR� D� �!r�₀��t���Z[X�SQ�@ �ش�����t���t�� u3��� �� @Y[�� �PSQR.��=��t@�t9� .���.;�r%t.+�+�� �� �����������e�� �.���Y�ZY[X�PSR�����E��g �l t��Z�7�<t<u�  ���#������������Z[X�PV��3ɬ
�t<
u�A���^X�PQW���װ
����Ku���_YX�P� u�Xô�t3���3����Z��W��PS�J�R
�![XÐ���PrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStack