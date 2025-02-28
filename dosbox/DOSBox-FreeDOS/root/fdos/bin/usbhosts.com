�b)USBHOSTS 0.06, (C) 2007-2009, Bret E. Johnson.

 This program simply looks for all of the "standard" USB Host Controllers it
  can find and lets you know a little bit of information about them.
Most people have no idea that there are actually several different kinds of
  USB Host Controllers, and that they work VERY differently from each other.
This program tells you how many USB Host Controllers are actually installed
  on your computer, and what kind they are (OHCI, UHCI, or EHCI).

OHCI stands for "OPEN Host Controller Interface", and is a Standard
  developed by a consortium of vendors, including Microsoft, Compaq, and
  National Semiconductor.  It only works with USB version 1 (maximum 12 Mbps).
UHCI stands for "UNIVERSAL Host Controller Interface", and was developed
  by Intel.  It actually was developed before the OHCI Specification.
  Like OHCI, UHCI only works with USB version 1 (maximum 12 Mbps).
EHCI stands for "ENHANCED Host Controller Interface", and, like UHCI,
  was developed by Intel.  As far as I know, it is the ONLY Host Controller
  Specification that will work with USB version 2 (maximum 480 Mbps).
  If this program finds an EHCI-compatible (USB 2) Controller, it should also
  find at least one OHCI- or UHCI-compatible Controller.  The two different
  Controllers (an EHCI and a OHCI/UHCI) will be integrated into the same
  Device, and will "divide" the work between each other.  The EHCI Controller
  handles the Fast-speed (480 Mbps) devices, and the other Controller (OHCI
  or UHCI) handles the Full- & Low-speed (12 & 1.5 Mbps) devices. HCI 0000_0000   
    
 MORE   (Esc stops Pausing, Ctrl-C stops Completely, any other Continues)  MORE                                                                    
                                                                                             PCI BUS
      ����������                             BASE           USB DRIVER
      I   B  D F                      BASE   PHYSICAL   �������������������
HOST  d   u  v n              USB IRQ I/O    MEMORY     HST             BW
TYPE  x   s  c c  VENDR PROD  VER NUM ADDR   ADDRESS    IDX   STATUS   USED
����  � ��� �� �  ����� ����� ��� ��� ����� ����������  ��� ���������� ����
 Running    Suspended  Stopped    Debug Mode Unknown    

�������������������������������������������������������������������������������
�������������������������������������������������������������������������������
�������������������������������������������������������������������������������

 
Could not obtain detailed data from the USB Host. �������������������������������������������������������������������������������
 Stopping Enhanced Host Controller # .  This may take several seconds...

 Enhanced Host Controller #  has been stopped.                                                                    �STATUS��
                                                                   S O R R S
  �������GENERAL��������  ����������������FRAMING����������������  W w W W c
         HOST                   T       T       PERID LOW   MAX    R n k k h
  HCI CONTROLLER  HOST    FRAME g FRAME g FRAME START SPEED FS     s e C E O
  VER COMM AREA   STATE   TIME  l REMAN l NUMBR THRES THRES PACKT  t r n n R
  ��� ���������� �������  ������� ������� ����� ����� ����� �����  ���������
   �������������������END-POINT DESCRIPTOR ADDRESSES (hex)��������������������
  ��PERIODIC���  ��������CONTROL��������   ���������BULK����������  ��DONE���
            E I            E F           C           E F
            n s            n i           B           n i
            a o            a l           R           a l
            b E            b l           a           b l
   CURRENT  l n    HEAD    l d  CURRENT  t   HEAD    l d  CURRENT     HEAD   
  �������������  ������������� ��������� � ������������� ���������  ���������
   �����������ROOT HUB�����������   �����������������PORTS�����������������
   P P N ~ P N R  ~ O      TOTAL      N P P ~   ~ E ~   ~ O ~ R L     TOTL
   o t o P t o m  O C POWR POWER    P o t o C C E n S S O C R e o     POWR
   r P P o O O W  C u GOOD  ON      o R P w o o n a u u C u e s S      ON
   t w w w C C a  u r TIME PORTS    r m w e n n b b s s u r s e p DVC PORT
   s r r r r r k  r r (mS) (mA)     t v r r n n l l p p r r t t d ADR (mA)
  ��������������  ��� ���� �����   �� ��� ����������������������� ��� ����
                          ��������������LEGACY SUPPORT���������������
  �����INTERRUPTS�����   �����ENABLE������  ����STATUS�����  �DATA��
  M I  O U R S F S W R   E E C I E I I A A    T P N O   A P 
  a n  w n t t r c r e   n m h R x R R 2 2  B i a o u I u r 
  s t  n R H F # h B s   a I P Q I Q Q 0 0  o m r I t n x t 
  t R  e e u r O O a D   b n n E R 0 1 S S  o O E n F F F 6 
  r t  r c b m F R k t   l t d n Q 1 2 q t  t t r h l l l 4  IN  OUT
  ���  � � � ������� �   � � � ������� ���  � ��� � �������  ��� ���
                                                                                                                                                                                                                                                                                                                                                                           Reset   Resume  Normal  Suspend         �����GENERAL�����  ��PERIODIC�� �����ASYNC��������
            C 6 R L  I  I      LIST   S      LIST  S   D R
          H o 4 e t  s  n             t            t P r e
        R a n B s R  o  t             a            a a B c  FRAM P
  EHCI  u l f i e s  T  T             t            t r e l  LIST r  FRAME FRAME
  VERSN n t g t t t  h  h   ADDRESS   s  ADDRESS   s k l m  SIZE g  TIME  NUMBR
  ����� ��� ��� ��� �� ��  ������������ ������������������  ������  ����� �����
   ������HUB�������  ��������������������������PORTS���������������������������
   P P R # P TOTAL     D R   R P ~   ~ E ~ O   R R W W W     TOTL
   o t u C P POWER   P e m C t o C C E n O C S e e C D O     POWR
   r P l o C  ON     o b t o C w o o n a C u u s s o i C      ON 
   t w e m m PORTS   r u W m m e n n b b u r s D e n s u DVC PORT
   s r s p p (mA)    t g k p p r n n l l r r p t t n c r ADR (mA) STS LED TEST
  ���������� �����  �� ������� ������������������� ����� ��� ���� ��� ��� ����
   �INTERRUPT�   ����LEGACY SUPPORT�����
    U S P F A     S  C U S P F A  O P B
    S y t r s   B y  o S y t r s  S C s
  U B s C m y   I s  m B s C m y  O I A
  S E E h R A   O t  p E E h R A  w C d
  B r r g l v   S m  l r r g l v  n m r
  � ��� �����   ���  � ��� �����  �����
  SE0 JSt KSt �Err  Off Amb Grn �Err  None J-St K-St SE0  Pakt Enbl �Err!   ��������GENERAL��������
      C P D P S   H F E R
    H o k e r y G C G G e
  R a n t b c s R R R S s  FRAME LIST
  u l f 6 u E E s s s u D  BASE       FRAME FRAME
  n t g 4 g r r t t m s t  ADDRESS    TIME  NUMBR
  ��� ����� ��� ��� �����  ���������� ����� �����
   ���������������ROOT HUB��������������   �INTERRUPTS�   �LEGACY SUPPORT�
  TOTAL    ~   ~ E   R R L L L     TOTL     U  O R S T                A A
  POWER  P C C E n S e e o i i     POWR     S  n e h O   P S          2 2
   ON    o o o n a u s s S n n      ON    U B  C s P C   I M  6 6 6 6 0 0
  PORTS  r n n b b s D e p D D DVC PORT   S E  m u k R   R I  4 4 0 0 P E
  (mA)   t n n l l p t t d - + ADR (mA)   B r  p m t C   Q #  W R W R T d
  �����  ��������������� ����� ��� ����   ���  �������   ���  �����������
                                                                 �� ��VENDORID.COM PATH=Path=PCI xxxxh xxxx:xxxx ~                                                                                                                          ��������COMMAND CMD NDOS 4DOS 4NT 4OS2  CMDLINE=��                                                                  �                                                    USBHOSTS  SYNTAX:  [Options]

  ? � Show this HELP screen
  A � Show all ALIASES for these command line options
  V � Show all errorleVels (DOS return codes)

  D   � Show DETAILED status of All Hosts
  E # � Show Detailed status of ENHANCED Host, PCI Search Index #
  O # � Show Detailed status of OPEN Host, PCI Search Index #
  U # � Show Detailed status of UNIVERSAL Host, PCI Search Index #

  With no Options, shows a Summary (not Detailed) status of all USB Hosts

  S # � STOP (unconfigure) Enhanced Host, PCI Search Index #

If running from inside another program (if not running from the command-line),
  the other options can be followed by two hex call-back addresses
  (#Segment:#Offset) to which the output and headers will be written.
See USBHOSTS.DOC for details.
                    ALIASES FOR COMMAND-LINE OPTIONS
�������������������������������������������������������������������������������
                                                                                                                                                                                                                   ERRORLEVELS (DOS RETURN CODES)
  �����������������������������������������������
   0 No Error.
 Bad Command-line Option. DOS must be at least version 3.00. This program requires at least an 80386 CPU. Could not find a PCI-compatible BIOS. There are no USB Host Controllers installed. ��� Error in the command-line Options for USBHOSTS:
 ^ Error

 Type "USBHOSTS ?" for Help.
 HCI Host with PCI Search Index #  does not exist. <<-More}     {More->>  Help  ?UniversalHst UniversalHost UniversalHCI Universal  UUnconfigureHst UnconfigureHost UnconfigureEnhancedHst UnconfigureEnhancedHost UnconfigureEnhancedHCI UnconfigureEnhanced UnconfigureEHCI Unconfigure  SUHCI  UStopHst StopHost StopEnhancedHst StopEnhancedHost StopEnhancedHCI StopEnhanced StopEHCI Stop  SOptionAliases OptionAlias  AOpenHst OpenHost OpenHCI Open  OOHCI  OHlp H  ?ErrorLvlTbl ErrorLvlTable ErrorLvls ErrorLvl ErrorLevelTbl ErrorLevelTable ErrorLevels ErrorLevel  VErrLvlTbl ErrLvlTable ErrLvls ErrLvl ErrLevelTbl ErrLevelTable ErrLevels ErrLevel  VErLvlTbl ErLvlTable ErLvls ErLvl ErLevelTbl ErLevelTable ErLevels ErLevel  VEnhancedHst EnhancedHost EnhancedHCI Enhanced  EEHCI  EDetails Detail  DCommandLineAliases CommandLineAlias  ACmdLineAliases CmdLineAlias  AAllHostsDetails AllHosts AllHostDetails AllHost AllDetails All  DAliases Alias  A ?4<A<<D@<E$=O)=SD<U.=V8< �� M���m �� u����z�@�^�����A&�� ������ �A& ���&u��&u����2�[2�
�t�+ �,�Y�&���L�!QWV��I��� �� � �^_Y�PS3۸�[X�PSWV�6 t%������? t�
�t:u	CG��= t�������>��^_[X�PQWV� H�ؾ ��� ������&�>� ^_YX�PR���%�& r���%�3 r���%�g r
��&� s�1�ZX�PSQ� 0�!��= s���Y[X�PS�� s� �X	�P��X��u�����[X�PS�� �X%�P��X!�9�t�����[X�fPfSfQfRfWf���f3�f3���r	f��PCI tf���f��f_fZfYf[fX�PV3�� �rs��ks
� �ds���^X�P�X�fP �f��fX�PS�g� t�! s	� ��g
�t���[X�PS�5�!���[X�PSQRWV���/�t���^_ZY[X�QRV�]�3�� � rF����% 3���z rF���� 3�� �t rF�v��^ZY�R��&u
�t��	�sZ�PV3�� � r�NF��3��� r�?F��3�� � r�0F��^X�S�>-< t
�8-<t�D-��[�Q�O�
Q�U �Q�E fPSRU���I r<����I����'��d � �<�7���� �4������������]Z[fXY�fPfSfQfRWVf�f�  ������sf����f f��^_fZfYf[fX�PSR�g ��f �����f $��� ��9���������)����Z[X�PSQ��u�����`�� ��Y[X�����������Q������������������Y�fPSQfR�f� �����wt!� �@%����g�i �v�
��f� ����!f�i f!б�l�W��<�HfZY[fX�PSQRV�h ��u
rg�& ��D �
r;f t�|tL�D����v
rT�D��h ���	��t��	��t��	��t�

��t�
�F�����h���������
�������^ZY[X�PSW�>W�t����r��S���/��� [�1�}_[X�PQW�ȹ]E�>��t���=�t�E�� _YX�PW����:����_X�U3��
U� �U� fSfQfRWfP2��߉���f ��fXr��tw������f������_fZfYf[]�fR� fPfSfQW2���f������f ��_fYf[fXfZ�2�����SR�i 2��<tw����
�PBB�f��XZ[�PR��&t� 
��]��7�r��� ��İU��r�Ot�E��	��&ZX�S�#4< t
��0<t��5���[��s	R��Z�fPSQRVU������ �3����'����Z��"f�D�W���D4%�?��D7�����D8%�?��D;���t���D<����D@%�?�u���DD%��i���D6%��]���D�T��A��<��4��/��D
$��:���f�D$����D���� �sf�D $���D����D����]f�D$$���Q�D$�����Df�D($��w�D� ��D���(f�D,$��[�f�D0$��O�_�r�
�DH������DR��v�DH��s��n�DP���f���TR� �^��Q3��DK���]2����� �I�"��:lHw�=���s�	��D����D����D�d�@���D�d����@������ ������������N�Du
�K�+�X�x�������������@����� �����D���@������|��w��r� �m��h���D������D��������]^ZY[fX�fPQWf�i ���H �rf   �� ��s���_YfX�PR��D$���������t�������iZX�fPSQR�|����f�DL�f f���_ Q�ͻT �����Y� �P���� ���� ���� ���� ���� ���������KZY[fX�PSQ��3ۊݱY��r�.���Y[X�fPSQRU����� ����i�%������г �����-� �0�@�#���� �������
���� �������i���f% �����I�[�� ���R��w����{��A��f���2��A����ų�S�� ���H���������������������������^�����u���������E��@��;��6���� �-�ȷ��&������7�ų���� ������]ZY[fX�S���2��.[�PS����������������@��������� ������
�O[X���s	R��Z�fPSQRWVU������ ������$3ۊ����D�H�����E��x�E@��p�D��h���a���\�E���a�E�[��f�E% �����e����� �f�E%������e���� ��=��@�	�E� ��P�|�t�E%�?������b�D$���D����������G�n�A�D$�c2��@�1�T��� �D���8�w�9�����z��E�e��x��s��n��i��d� �_���\
�td��<uYf����U��U�����~���f���ЈȊ��&��!������� ����� ��@���������똱�x����k�]^_ZY[fX�fPQWf�i �$�e �_YfX�P�K�Du�(����u�+���$�VX�PSQ�$� �.�Dt�Y�$�������������
Y[X�PS��
�a��$?2���`��~[X�fPSQR��
���f��
�D��:��.u�Y�
�b�p��u�
���� 3ۊ�K���AD�QF� �"��������	��� �� ��� ���� �@�� ��� � �� � �� � �� ��^�O
P�������� �=
X�Du�
�
�
��������+� �
�
���»?� �\ZY[fX�PSQ��	�D�t3ۊ�K��@��t����D$
�u�	����H������	Y[X�PSQ� P�SU�!B��r�u��!Bu��SUt���Y[X����P�SU�!B��Ä�u�	�h	�� �P���P�P���n	�Y��u�.�D	X�PQWV�߈ĉ��:�t<�t
���2�G����
^_YX�PSQRVU�3	�>h �t,���ž& �!�D�}�r9�t�|t�D��D�	���	]^ZY[X�PSQRV
�u���>h �t�& �2�D�l�5����f	��
�t�����^ZY[X�PR���&�
���2	��&�
ZX�R��:�R��:fPSfQWf����  �ً��t��v� )���r
�f�����_fY[fXZ�SR� � �SR� � fPfWV�L �m �| r&�/ f3���f��f����  f���� ������
�t���^f_fXZ[�fP�@f���@�`fX�PSQWV�m � 3��m � � �  � �@��A��@��A�^_Y[X�fSf����t�<�s�
�r
� s���sf�����f[�fSQfRfWfVfUf��f% ���f��f)�f��3ɸ��g
�uf;�uf3���f��f��A�� r�f�����f]f^f_fZYf[�V�� �>$ �t�6$ � ^�P��t </t<-tN���t� u��@��[���X�PSW�s3��&��s���L*�'
�t:�t�����&�&A&
��W��B&��>B&�_[XÀÀÀÀ�fPfSQRWUf3����rG�Ѐ>A&�t_�w �� �2�r9�[ �#�r8�$f�i ��f؀%�� ���r��@f��@�%����r��B&���E�������I ��&�W ��]_ZYf[fX�fPS����f�i [fX�PR����&t�^	�L�t���n����eZX�PR�º��X�y��OZX�R�3	�L�B�*	Z�S� �S��S� PW� ��r�>A&�t��������B&���_X[�S���]t� r
�< �d s�� s�����[�PV�# s�N�� r�� s�<_t��� t���^X�PS���� <0u�� <0t��e<Xu�� � s����N�[X�SQR��3۹ 2��� �n s<_t�����sN����N
�t� �| tN��������ZY[�SQR3�3۹
 � t#,0<	wN�t ,02�;�s���r<w��������N���ZY[�S��� s�� <Ar<Fv����,7��[�<0r<9v��,0��P� <HX�PQW�� �� �&�E� _YX��>$ �t�, �
��� t���
��P���< t�<	t�N
�X�SR�Ѐ? t42�V����@ �. t��C�? u�C
�t
^�? u�CC��XK�C�u�C������Z[�P� �Ċ� :�X�<ar<zw, �`�1 �@ ���"�)��I�B ��W �W����u&����a�PN�<�t< u����Xø� �߻� �� �C&��&�PSRWVU�͎ǋ����y����ȃ�Fv#)�3��[��Fv��&���< )��߽; �)�� ���.��ǃ�Ov�E +�Ê �  �� ��&�
��]^_Z[X�PQWV�, 3����3��= u��} t-�u�� 3ɬ<.t<\t�����A��
�t<\t���2��.�� ^_YX�SQV����� �" u��� �>� ~r� �$ � � �: ^Y[�PQVU����, 3��ы�2��ʋ��t����&8u���?�?�]^YX�PRV�6$ ���tE�/� 7�!�, �< t�<	t�N2�<"u��F�
�t:�u�
�t< t<	t
</t8�t��N.�6$ ^ZX�PSQRW�΀>��t/��t*�4 r%���+ r��u�����>����
�B&������_ZY[X�PQR�����W�t�f�r���@�t<:u�B�t	�Q�r����������ZYX���&t�� ���� ���V�� 2������&t&SRV���#���&�?Z� �� ^Z[�[2�����Q2�PW�H$���6 t(�`
�u�N< r�� ��� ��LP��u$�~X�M 8�t����_XY�PSQRWV�ω�< t�����:Du�ր< t	�5GG�����FF�< u��  9�^_ZY[X�`�ي������3���;�r)�5OO��
�t8�r��Q�O(�� Y��(����_ ����a���&t-�%���~%�gr�: �� �4 ������u�[2�����R��� R���R�h�R�%�R�.�R�\�R�]��W�W�XZ�S��B�S��BQ
�t2�����Y[�S� �S� �	S� �S3�RW�M��f��� Gf���	 ��_Z[�PS��� [XÊ�� ������ ���'@'��PS2��PS��PS2�2��PS�QRV�W2۹'3����u
�u��t��u� ��u��dv�	��0�� ��t��P3҉ȹ
 ���X�^ZY[X�.�>W�tS� �S� PQ�
 t�@�!YX[�PW��2�������I_X�PV��ވĬ<�u�<�t	:�t� �������^X�QR�����A�ZY�R����Z�R��� ZÃ>��t�>��tPSQRWVU��]^_ZY[X��� �R�[� Z�PSQWV�W�<�tj�< tb�h s�  �W�z �U�@AA�>[σ�H9�r"�[�Y Q+[��A�m��Y�<�t$�< t�.[��Y[�U;[sH�[���^_Y[X�PSR� D� �!r�₀��t���Z[X�SQ�@ �ش�����t���t�� u3��� �� @Y[�� �PSQR.�W=��t@�t9� .�[�.;Ur%t.+U+�� �� �����������I�� �.�[�=�ZY[X�PSR�W�_�)��g �l t����<t<u�  ���������Y�[����Z[X�PV��3ɬ
�t<
u�A���^X�PQW���װ
����Ku���_YX�P� u�Xô�t2���3���� � �R�Y��Z�R�Y��Z��������>��t�>��tPSQRWVU��]^_ZY[X����W�����_�PQRWV�@ ���W�_���X������^_ZYX�PV�z���  �D��D�D��D�D
��D^X�`�&����z� K�!r���&���M�!
�t���a�PV�6����t�, �l �< s5���_ �/ s(�6����t�, �J r� s&�F
�t<;u������^X�PSQR�/�!����!� N� ���!��ڴ�!�ZY[X�PSQWV��3��  ��W�_2ɬ
�t	<;t�����
�t
&�}�\t�\��ެ
�t���^_Y[X�PSQWV���, 3����3��8u�9Et%����.�?�<:t
<\t
�t�����.;?t� �.���^_Y[X�PS�J���![XÐ�����������PrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStack