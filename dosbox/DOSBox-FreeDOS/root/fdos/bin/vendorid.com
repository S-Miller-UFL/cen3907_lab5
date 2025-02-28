�VENDORID 0.07, (C) 2007-2009, Bret E. Johnson.

 SYNTAX: VENDORID [Options]

  ? � Show this HELP screen
  O � Show all aliases for these command line OPTIONS
  E � Show all ErrorLevels (DOS Return Codes)

The Following Options require a Vendor Type (PCI, PNP, or USB) to be entered
  first, and also require an appropriate Data File (VENDORID.PCI, .PNP, .USB)
  to be located in the same directory as this executable file (VENDORID.COM).

  PNP aaa     � Show Vendor Name for PNP Vendor ID aaa
                    aaa is a three-letter acronym (e.g., SNY = Sony Corp).
  {PCI/USB} # � Show Vendor Name for {PCI/USB} Vendor ID #
                    # is Decimal (0-65535) or Hex (0h-FFFFh, 0x0-0xFFFF).

  {PCI/PNP/USB} "String" � Search for "String" in {PCI/PNP/USB} Vendor Names
                              Search is case-insensitive.

  {PCI/PNP/USB} A � List ALL {PCI/PNP/USB} Vendor IDs and Names
                       You may want to use one or more of the DOS Filters
                       (FIND, SORT, MORE) with the ALL Option.
                       "VENDORID USB All | FIND "h  " | SORT /+8 | MORE",
                       for example, will sort the entire USB Vendor Name
                       Table by Vendor Name, and pause after each screen.
  {PCI/PNP/USB} S � List the {PCI/PNP/USB} data SOURCE details

  If running from inside another program (not running from the command-line),
    the Option can be followed with a hex address (Segment:Offset)
    to which the output will be written.  See VENDORID.DOC for details. 0000h 
          _Total Records_
 PCI  PNP  USB  
 MORE   (Esc stops Pausing, Ctrl-C stops Completely, any other Continues)  MORE                                                                    
                                                                                                         ALIASES FOR COMMAND-LINE OPTIONS
�������������������������������������������������������������������������������
                                                                                                               ����COMMAND CMD NDOS 4DOS 4NT 4OS2       Error Opening/Reading Data File  :
   Unknown Error. File Sharing Error. File not Found. Path not Found. No File Handles Available. Access denied.           CMDLINE=��                                                                �� VENDORID.PCI VENDORID.PNP VENDORID.USB   Error! Could not find Data File  Error! Incorrect format for Data File  No Matching Record Found                  ID                 VENDOR NAME
�����  ����������������������������������������
                                                                                   VENDORID  
                      ERRORLEVELS (DOS RETURN CODES)
  ���������������������������������������������������������������������
   0 No Error.
 Bad Command-line Option. DOS must be at least version 3.00. Data File (VENDORID.PCI, .PNP, or .USB) is missing. Data File (VENDORID.PCI, .PNP, or .USB) is incorrect or corrupted. ��Data Source(s):
   No Sources Listed in Data File  Error in the command-line Options for VENDORID:
 ^ Error

 Type "VENDORID ?" for Help. <<-More}     {More->> Help  ?USB  Sources SourceDetails SourceData Source  SPNP  PCI  OptionAliases OptionAlias  OHlp  ?H  ?ErrorLvlTbl ErrorLvlTable ErrorLvls ErrorLvl ErrorLevelTbl ErrorLevelTable ErrorLevels ErrorLevel  EErrLvlTbl ErrLvlTable ErrLvls ErrLvl ErrLevelTbl ErrLevelTable ErrLevels ErrLevel  EErLvlTbl ErLvlTable ErLvls ErLvl ErLevelTbl ErLevelTable ErLevels ErLevel  EDataSources DataSource  SCommandLineAliases CommandLineAlias  OCmdLineAliases CmdLineAlias  OAllVendors AllVendorIDs  AAliases Alias  O Source DataSource  S ? AEOKS�v{� ���#��> ����N u��� ���n�62�����
�t��2���^�L�!QWV��I��� ��� �^_Y�PSWV�6 t%�V	�H	��? t�
�t:u	CG��= t�����Q	��>Q	�^_[X�PQWV� H�ؾ �H	� �����&�>H	 ^_YX�PR��]� s�X�ZX�PSQ� 0�!��= s���Y[X�RV�6c
���t�, �T �? s��e
�E �0 s��
�2�#
�,���� �
�� �
�.
�
 �^Z�PQR� N� �#
�!ZYX�PSQWV��3��  �#
W�_3ɬ
�t	<;t�����
�t
&�}�\t�\��ެ
�t���^_Y[X�PSQWV�c
�, 3����3��8u�9Et%����.�?�<:t
<\t
�t�����.;?t� �.���^_Y[X�R�P�v	u�U�v	u�Z�Z�PQWV�S� �  �( �S�-
�t<;u�"<;u���^_YX�PSRW�v	�v	��6�f
�u�s
�u��
��r��� u��3�� ���_Z[X�V��
�t<u��D� ^�P����u�� s��u�@ ��#3��q t0�~ r�t*�
�u��uN�W t�d s�����F)6
�
 ����X�PQV��#�`��^� r����*^YX�<t<�t< s
�t<t<	t���À<t	�< uFu�N�<�V���t�< t�<tFu����^�PSR� =�#
�!s��
3���؉
�Z[X�PSQRW��0n��#� B�
�O r=�
�
�!r1�?�
�`ܺ�#�!r!
�
 �`ܿ�#�=t�=
u� G���	�( ��
���_ZY[X�P�
;
wr�
;
r���X�PS�>�
�t�!r�
  ���
[X��w	�y	�v	 ��v	 t*�&v	ߜPWV3��ǿ� �w	��&���D�&���D��^_X�ð��6�3�{	���#
����	����
� ���PQV��	��w����	����^YX�V��� �>!
�t�6!
� ^�P��u� �tH</t<-u�t0N�Xr��<'t<"t<`u�[N�v	t��r��� u�����6�*�X�PSWU���s�C�A	���'
�t:�t����v	�W��.��>.�]_[X��,t�.�ú62�����t�.�ú��r	��B��r��d����#
���u�62�����t�.����
�]�7	���?Z����62��w�P��P��P��t�t�t����.�X��t� s	NFF�.���K��>Q	�u	������3ɋ����_t<;tN���r�t�]
A�a�^�����a�sѺ6�u�2�����t�sF�.������>Q	�u� �<����33ɺS���\���t����r$���t��	A�{��u��	��
����
�������s��6�>Q	�u��	���
�<2��_�����v	t�sF�.���X��>Q	�u�\ �v	t�����
�{
�}
���v	t���؋����r9�u�S����S�
���b�s��
2�����v	t�r�sF�.������>Q	�u� �=����43ɺS���]���v	t����r+������r �t��A�v	u����	��z ��	�������s��6�u���	��
2��]�SQR��3۹���x�. r ,@���u��hN< t<	t
�t<t	<t�������ZY[�<Ar<Zv<ar<zw, �����PSQ�ر� ��� � Y[X��Ê�$@�,	�Q2�PW�����6 t(�&
�u�N< r�	��	��LP��u$�ZX�M 8�t����_XY�PSQRWV�ω�< t������:Du�ր< t	�5GG�����FF�< u��  9�^_ZY[X�PSQRWV�ي������3���;�r)�5OO�
�t8�r�Q�O(��Y��(����u����k^_ZY[X�PSV�1
�t)<;t< u���Ct��?;u�;u��<;uF�%��^[X�PQW�Ĺ( �|�� 
�t:�u�� :�u������� :�t��N�_YX�PSQRVU�|��t5���(��AA�z�It"�< t���S�֋�� �:uC�? t��B������]^ZY[X�PSV��� tD�<;t?��� r� �{ t,<;u+�<;t&�!���v	t����r�e t�<;u	�|;t� ^[X��g�d��
��#
����PQW�� �� �&�E� _YX��v	u�>!
�t�, �
��� t���
��P���< t�<	t�N
�X�P���t	<:t<=tN������X�SR�Ѐ? t42�V����. t��C�? u�C
�t
^�? u�CC��XK�C�u�C������Z[�P�n�Ċ�g:�X�PSQRWVU�4 �C �I�)��I�Y ��5 �5�0���a�(���#]^_ZY[X�PN��t< u����Xø� �߻����>!
�t
�>, �!
- �/�l�PSRWVU�͎ǋ���������ȃ�Fv#)�3��6��Fv�����< )��߽; �)�� �����ǃ�Ov�E +�Ê �  �� ���v��]^_Z[X�PQWV�, 3����3��= u��} t-�u��3ɬ<.t<\t��?�A��
�t<\t���2��.��^_YX�SQV�>Q	�u�>� ~r�
�!
� � �: ^Y[�PQVU����, 3��ы�2��ʋ��t����&8u���?�?�]^YX�PRV�6!
���tE�/� 7�!�, �< t�<	t�N2�<"u��F�
�t:�u�
�t< t<	t
</t8�t��N.�6!
^ZX�P��t3�>Q	�t#� r�T	�o�t<:u�q�t� r�R	�d�t	�R	�����X��S�t� r
�: �b s�� sN����PV�# s�
�N�� r��� s�<_t��� t���^X�PS�����<0u���<0t��� <Xu���� s����N�[X�SQR��3۹ 2����n s<_t�����sN����N
�t���| tN��������ZY[�SQR3�3۹
 ��t#,0<	wN�e�,02�;�s���r<w��������N���ZY[�S��� s�7 <Ar<Fv����,7��[�<0r<9v��,0��P� <HX�PS3۸�[X�<ar<zw, �PV��ވĬ<�u�<�t	:�t� �������^X�QR����A�ZY�R����Z�R���� ZÃ>R	�t�>Q	�tPSQRWVU�R	]^_ZY[X��� �R�6� Z�PSQWV�W�<�tj�< tb�h s�  �W�z �U�<AA�>[σ�H9�r"�6�Y Q+[��A�b��Y�<�t$�< t�.[��Y[�U;[sH�[��^_Y[X�PSR� D� �!r�₀��t���Z[X�SQ�@ �ش�����t���t�� u3��� �� @Y[�PSQR.�W=��t@�t9� .�[�.;Ur%t.+U+�� �� �����������`� �.�[�TZY[X�PSR�W�_�@�g �l t���2<t<u�  �������Y�[����Z[X�PV��3ɬ
�t<
u�A���^X�PQW���װ
����Ku���_YX�P� u�Xô�t2���3���R�2��Z��������R�2� Z�S3�RW�,���	 ����_Z[�PS��� [XÊ�� ������ ���'@'��PS2�2��PS�QRV�52۹'3����u
�u��t��u� ��u��dv�	��0�� ��t��P3҉ȹ
 ���X�^ZY[X�R���e�Z�.�>W�tS� �S� PQ�
 t�@�!YX[�PW��2�������I_X�R���R���R�=�R�:�R�9�R�7��5�5���Z�P2�QR
�t2��:
�u����������ZYX�PS�J� �![XÐ��������������PrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStack