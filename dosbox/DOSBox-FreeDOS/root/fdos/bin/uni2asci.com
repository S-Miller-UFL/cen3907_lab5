�SUNI2ASCI 0.01, (C) 2007-2009, Bret E. Johnson.

 This program attempts to convert a UniCode String (16-bit characters)
  into an ASCII String (7-bit characters).  Because UniCode and ASCII are
  so different from each other, the translation is not always accurate
  or complete.  In spite of the shortcomings, this program can help
  you "see" what a UniCode String might be trying to tell you.

The UniCode string to be converted must be terminated with a NULL character
  (0000h), and must be in memory.  You must provide UNI2ASCI with the
  hexadecimal memory address (#Segment:#Offset) where the UniCode string is
  stored (for example: "UNI2ASCI 1234:5678").

The ASCII output is normally sent to the screen, but can be redirected using
  standard DOS redirection and piping methods.  If running from inside another
  program (if not running from the command-line), the hexadecimal memory
  address can be followed with a hexadecimal call-back address to which the
  output will be written.  See UNI2ASCI.DOC for details.

This program is designed as a Support Program, to be called from
  "inside" some of my other Programs.  Because of this, it does not have
  all of the nice things that a "real", stand-alone program should have.
 You must be using DOS version 3.00 or later to use this program. UNI2ASCI 0000_0000 
     {U+ 
 MORE   (Esc stops Pausing, Ctrl-C stops Completely, any other Continues)  MORE                                                                    
                                                                                       �          ����COMMAND CMD NDOS 4DOS 4NT 4OS2   Unused Illegal Reserved Private Surrogate Unknown {VS- {Tag- Language Space Cancel {Error} �p � ���0� �@� `)���1� ���h
�
���	
� 91�]C������2� ����\]��7������Ei	!
$
\
i
�
�
i���QR���<=>PQR"B����`#L����� (!�,�,�,�,�,�,1�����3�5t � ���4��u � �����5G�@G�v � �,�,���6�f��W�� ���*�>bJ w � � 8!�#�)�.�011�1�1�1��"�'�3�:�H��q���������7"#Q�	j
�x � *����8i�����	g
�
hDktu��oy � �,�,���9� � � � � �  ���� &:����6
8
���� , ������������	
�������������� +!r#\*!���A� � � � � � ����'Qc��0�����Q`rCE��������������� pq���������������� "v#z#e,D�����A���a� �C���2&?��������VWX]^_ijk��./]f,!�,�,�.�."���B�����S*,JLbc��e8������rs~�����yz{����Gl�"$m&m&,C,,H,-����������������B���b� 
�;�|��!������-��UVabcdej�fghijn�o� � !-!m!"�"�"�,�,N-//171S8SS�T�������#�����C� � 	�<Uh��A���ft��	}!�,�, - ����C�����c� ���������0�
M E!n!�!�*$���D� ��!VWi :jn�
��opqz{|}��wx���Hm��� F!~!"P���`�ѢҢ��������D���d� � � � ���(F[������ T�9:dD	l	l
�
�
=NG[������?Sf�	�1K���������rs��� !0!"
"�"�"�"�"�"�"�"�"�"w#�,�,9-I-L1`���£@�~����F�%�����E� � � � )Gd5PQ�����'TUXYqI���������� .!/!G!E���e���������� 1!&���F��?	�	?
ns����������J�K���F���f "����b����3 � '���G!#���`a���M��!
!L�G���g$&���=��������.
���������|4x"$&(*()*+,-./�����������!!g,�,�,P1?�Š�(�����H%'fg��j[������K�#%')+�!!!!!h,H���h� � � � (*,.0��
j�����bj�W��5��,.��89:;<=>?����`!6#J-//!0�0�0�1�]$�)�j�t���I� � � � )+-/1�	hie����VW#qru��b���-/��01234567vw������q 9!H!p!s#x#��P�Q���������I���i4HD�j9
B����������
6�,,\,?N����*���J5�7I���XuF��������YZghi�I!J���j68���:������7024� *!i,�,+���K7���\����O�135j,�,K���k� 9;=?A=�</���������Qgh8�68:<� !l!�#`,b,�,�,�.41�1ZN��,�����L:<>@B���4klm�l�
���79;=!|!a,�,�,L���l����<���?�Ob��9>@B3!o!O&,<,�,�,-�����Mq<k(� !"#$&';��Po��?AC� !K*-M���m� CEGJ��t��:�DFHJ� !�,�,��!�.�/�0�.���N� DFHIK�� 5rs��x|p
R_Qp���EGIK !"#$%&'tu������������� --N���n� � � � � � LNP������*,.0���z�>U�f
�
 f�f�fP� ��L�����j�F�<LNPR������������HIJKLM��� e#�%�%�&M'�,T-0G1�1�1�2�!�������/�����O� � � � � � MOQ�����+-/1�
%f����>{���)e����f	p	�	�	� �~�-6���$���12�5P\fuRMOQS������������@ABCDExy� � � 4!d#�&�,0-������~�����O�a�������o�� �����������lmnvwxy�uv~���)>TV�K � !c,�,8\0���P�����@�be�Vq}�UW��t#�,P���p� !U-��1���QJK�cf�
d�tQ���qTVX�L�����?XZ\^!!!!d,:\2���RUWYM|}~�lcr��Y[]_R���rZ\^`�O��������=	�
��V����!"#$%Ih��`bdfhb-��ء١��D���3���S[]_a?��>U�&IJx�����(���t��acegi�,.	.������S���sbdf��>�"B��"�>	I	>
PQRTU��Hh@jlnp� �"a#�#�,�,..1\1�1�4NNĤ#�4�������Tceg���6�m�����n
�prt�Wu{|�kmoq�  p&q&'''f,-\-/�0NAST�~�����t� � � � hjlnpr�������D&1DM*
k
�
��� LWXg^_k@HGI�iArtvxz�������"*"�"�"**�,a-/)1�Q������5���U� � � � � ikmoqs���������.\]g�����F_X}�(*+yz{|}~�PQRSTUV`aE	q
�M�%RS�!�8TYams��'(/XUXd~������suwy{�������PQRSTUVWz{������4#�,o-�����������������������U���u��c�tv���/:;S !%'1N |~#!d!("�"�"#q#�',L,8-6���V�����,n�uw�Zg�M��	r[e�}t!5#R*t,��@�V���vt�
,����a����Na&F�!B������ �',N,�,W�]�7�����Wu�+���aa�����':�U� %,Y������`abcdefg|}�������������u#y#J*�,-��W���w���%����m���cJ��i!s%&''''+),)	*�,K-]-(1�14BNINg�|�ˢ̢����8���X� ��=So�E���A}naj���b � y!/*�,X���x� � vx�2N��������������^g�����Y[]_�����,�,$-V-1�1+N9�����Y� � w�3O�#C^�����������������=!---Y���yy{}�$��"���$!!&k,�,/KNYN:���Zz|~�%@��FGv�������l,�,�1Z���z} � h'j'�)�)Y����(~ � i'k'�)�)Z�	���)E r'�'�)�)�)00000]�;���[F s'�'�)�)�)00000^�=���]�#t'�)[�[���{�#u'�)\�]���}�"#o&L-��_����#Zi����$j�R ,3,.j����%`����&�JK�)@���mz � �")&''' '"'#'$'%'�)b����+� � ��56F^��@��s(�-MR�nx      { � > "�#�#�#�#�#�#t%v%�&�)�,�, /�0a1�1�1 N[N�Qv�X�c��p�������-� YmpqN U "�"�"c#�# &&&8&<&�&�&!')'*'+','-'.'/'0'1'2'3'4'5'6'7'8'9':';'<'='>'?'C'D'E'F'G'H'I'J'K'a�
���*78����	�5�D "q%�)�,�,..30�0�1�����/�3?GB
�C | � �"�#�&/0�0�0�1�Nw�f������=��T����	89DEFGHIYZ[\]�y�9 z"�"�"�")#&l'n'p'�'�)�)010O0P01d������<��PU34567@ABCWX# : {"�"�"�"*#i#m'o'q'�'�'�'�'�)�).	0e����>����� @Q�Y]���]p���G	H	S	G
H
K
L
�
�
�
z{2� '4de����  5 ['�,/6N&��!�E�F�Q�@���`� �����	ACWt����Z[������NOQRSTWY^l��3G���Q	T	?��HL�9J>�2r���#����� 2 \'9�� �v�x�|����'� ���������K����_%&�$:   3 6 ]'^'00�0�0Ƥ�p����"� ���#X����������`����?@AB��	<	�	
<
�
�
<�:77�'�
kl|" $ ' ""�"�).0�0�1R��e���.������CD	�	
�
��8a�����]Z 6"�)S-/0)��0�U����:~$02v�������������jk�	O j#*>*`�d�h�l�p�����������������������������������\��T��������������������������;� ������!"&'()9;Euz����1HMPUV\k�147<>H�A	B	C	M	�	M
�
�
�
�
ABCM��8��3s�7989�� c .0%���2�P�s�t�z������������d���,�%s�D	Nb'c'Q-�W��������!A���}	AB�GHI���V����?�           	 
  / _ `  0d1���� ��*12:_��R	A
V�S;�#�##$�%.?���_k� ���@� ��'�d	�	>Ju��c� � #"#�#�#�#�#�#�#�#�#�#�#�#%u%w%X'Y'Z'O-///'1c1�1(N�N��1�3�������\���������|a��	�^� "r%�)�)..50�1h�<���\E����-/a��[h������?U�012<=>?TUV��*H�
ot'�8 '"�"�"#�'Q*7-/
/�1�NeQ���?�>�����^��� 04B`\����F	���S <"=">"?"000^���~��������������0Q
������������1a1
������������2	
"
E
�������������30
������������4������������5������������69`rs�*
,
����+�.�������������7������������8� 3��	 
������������9 $� �4�hԜ����8�lՠ����<�p֨����Vא���A�NԂԶ����RՆպ���"�V֊�����6�pת���aL 1B�5�i����9�mա���	�=�q֩��������7�W�qב׫���B�,�-�����OԃԷ����SՇջ���#�W֋���b2 � A]�����8��6�jԞ���nբ���
�>�r���C=d4Ѣ��PԄԸ��� �TՈռ���$�X֌����Gׁ׻���cG�7�kԟ����;�oգ����?�s���DRT^Ѷѷ��QԅԹ���!�UՉս���%�Y֍����O׉�����d)�S
_�!��8�l����<�pդ����@�t֬��������� �	�� �:�C�P�Z�t�}׊ה׮׷�����E1 �RԆ���"�VՊվ���&�Z֎���eF0��9�m���	�=�qե����A�u�������F���SԇԻ���#�WՋտ���'�[֏���f>�:�nԢ���
�>�rզ����B�v���G �TԈ���$�XՌ�����(�\֐���g���;�o���sէ����C�w֮���"�\ז���H�%�!ԉԽ���%�YՍ�����)�]֑���h� 	3�<�p���@�tը����D�xְ���$�^ט���If��"�VԊԾ���&�ZՎ�����*�^֤֒����>�xײ���iS	�=�qԥ����A�uթ����E�y���J#�WԋԿ���'�[Տ�����+�_֥֓���j�

�>�rԦ����B�vժ����F�zֱ���%�_י���K$�XԌ�����(�\Ր�����,�`֔����?�y׳���kC*��?�s����C�wի����G�{���L9@
%�Yԍ�����)�]Ց�����-�a֕���l<�@�t����D�xլ����H�|ֳ���'�aכ���M&�ZԎ�����*�^Ւ�����.�b֖���m=�������A�uԩ����yխ����I�}ִ���(�bל���N7?-
'�[ԏ�����+�_Փ�����/�c֗����<�vװ���nH��R
�B�vԪ����F�zծ����J�~ֶ���*�dמ���O+,t�	Q
��W�]���(�\Ԑ���,�`Ք�����0�d֘���
�D�~׸���oA�C�wԫ����{կ����K�ָ���,�fנ���P��)�]ԑ�����-�aՕ�����1�e֙����F׀׺���pI�D�xԬ����|հ����Lր���Q*�^Ԓ�����.�bՖ�����2�f֚���q:B��E�y���}ձ����Mց���R+�_ԓ�����/�c՗�����3�g֛���rC ��U	
�F�zԮ����J�~ղ����Nւ���SHe!
cЍ�,�`Ԕ�����0�d՘��� �4�h֜���sD
��n��G�{ԯ����K�ճ����Oփֻ������/�I�i׃ף׽���T+ . 
-�aԕ�����1�eՙ����5�i֝���t5��1��H�|԰����LՀմ����Pք���U(
A
�0ЉѤ�C�.�bԖ�����2�f՚����6�j֞�������A�J�{ׄ׵׾���u (��I�}Ա����MՁյ����Qօ���Vk~$���ѫ�/�cԗ�����3�g՛����7�k֟����B�|׶���v|"��J�~Բ����NՂն����Rֆ���W6	%�"�0�dԘ��� �4�h՜����8�l֠����N׈�����w"G��K�Գ����OՃշ����Sև־���2�lצ���XC
�B�*�C���1�eԙ����5�i՝����9�m֡����L׆�����xE
�LԀԴ����PՄո��� �Tֈּ�������0�8�j�rפ׬���Y��
2�fԚ����6�j՞����:�n֢���y6
�MԁԵ��ԅչ���!�U։֭���!�[ו���Z�Ў�3�gԛ����7�k՟����;�o֣���z�џ���)���[���{9��#���%���&?
D���+8
�g�j�`���- �����*b�
��:���/^�h�k�a���={��#��4�6���<v{сѓ�3�7���>�ѥ���`
P
х���'
��"	�"Ѕ���m�|Ѭ���.[���: 

9
:
�O�������,\��?�G�H�}���_ 	V
 ��eѠ���i���|X��;���\!u	)
��5Ҳ���&�`ך���^	Јї���~��� � ���7	 ��E� ��F ��I� � ��L���M$��P��T� 	z#��t���U� ��y ��=���<���^���$�$��0`$t$v'�'�'��1a$u$w'�'�'2c2��2b$v$x'�'�'��¢��3c$w$y'�'�'��4d$x$z'�'�'��5e$y${'�'�'��6f$z$|'�'�' 2`2�2��7g${$}'�'�'��8h$|$~'�'�'��9�$��A�$��B� �$2b2��C�$��D�$2k2��E�$��F�$��G�$��H�$�2%�&���I�$��J�$��K�$2a2��L�$��M�$��N�$�%2g2��O!�$��P�$��Q� �$��R�$��S�$�2��T�$��U�$��V�$��W�"�$�)*��X�$��Y�$��Z�$�$��a�$�$��b�$�$��c�$�$��d�$�$��e�$�$���f�$�$��g�$�$��h�$�$��i�$�$��j�$�$��k�$�$��l�$�$��m�$�$��nO�>#�$�$�)�)z�{���o�$�$��p�$�$��q�$�$��r�$�$��s�$�$&2)2�2�2��t�$�$��u�$�$��v�$�$��w�$�$��x�$�$��y�$�$��z� I#�)�)��\�S"�" #A-�2��/��$D@��=#�#�)@-��|��"�"	&�&�& *Y-��.�"_#��*�"*2-����+���rs����@�����"�"�)1- 2�2����-�)��<�)������>�"!2�2�2��=l#��~��i$}$'�'�'��10 j$~$�$��11 k$$�$��12 l$�$�$��13 m$�$�$��14 n$�$�$��15 o$�$�$��16 p$�$�$��17 q$�$�$��18 r$�$�$��19 s$�$�$��20 Q2��21 R2��22 S2��23 T2��24 U2��25 V2��26 W2��27 X2��28 Y2��29 Z2��30 [2��31 \2��32 ]2��33 ^2��34 _2��35 �2��36 �2��37 �2��38 �2��39 �2��40 �2��41 �2��42 �2��43 �2��44 �2��45 �2��46 �2��47 �2��48 �2��49 �2��50 �$��(10) ~&��oo �&�&��.. �)��|| '2�2�2��/\ ���$��1�$��2�$��3�$��4�$��5�$��6�$��7�$��8�$��97*��X���$��1�$��2�$��3�$��4�$��5�$��6�$��7�$��8�$��9���$��10 �$��11 �$��12 �$��13 �$��14 �$��15 �$��16 �$��17 �$��18 �$��19 �$��20 ��� j"�'�*
01�1�]��<< �!��<<- �� � � �!�!�!+����<- �!��<-< �')��<-- )��<--- �'��<--| �!��<-| �!��<= �'��<== )��<=| �'��<==| �)��-< )��-<< � k"�' *�*0��>> )��>>- )���>- �!��>-> � � �!�!�!�'�'�'�'�'�'�'�'�'�'�'�'�'�'�'�'�'�'����-> �!��->> b�')��--> )��---> �!��=> �'��=>> �'��==> �!�!��|-> �'��|--> �'��|==> )��|->> )��|=> �)��:-> M� �!�!++��<-> �'��<--> �!��<=> �'��<==> _!��1/ � ��1/2 S!��1/3 � ��1/4 U!��1/5 Y!��1/6 [!��1/8 T!��2/3 V!��2/5 � ��3/4 W!��3/5 \!��3/8 X!��4/5 Z!��5/6 ]!��5/8 ^!��7/8 J&a!"0��II b!#0��III c!��IV e!��VI f!��VII g!��VIII h!��IX j!��XI k!��XII �!��CD q!��ii r!��iii s!��iv u!��vi v!��vii w!��viii x!��ix z!��xi {!��xii ���22 �:1����27 ����2B �j1��2C �>1����2E ����2H ���2L �;1����2O ���72 �21����77 0���7| � ���-��AE s3��AU M!��A/S �3��A/m � �����ae ���aa �3��a.m.  !��a/c !��a/s �I��BJ �3��Bq �I��Bt +K����bI t3��bar ���C2 ���C7 81����CC � ��CE �3��Co. � ��Cr �3��C/kg ����cB  ���cH �3��cal �3��cc `���ccl �3��cd ���cH �3��cm !��c/o !��c/u ����DZ � ��Dp ����Dz ���d3 ,J,��d7 �3��dB r3��da 8��db �3��dl w3��dm ������dz ����EH ����El �2��eV �2��erg ;!��FAX �H��FB  ���ff ���ffi ���ffl ���fi ���fl �3��fm ���fn �3��GB �3��GHz �3��GPa �3��Gy �3��gal �3��HP 
Z��Hb �2��Hg ���Hu �3��Hz q3��hPa �3��ha �=��hu ����IB de��IC 2��IJ .N��IO z3��IU ����Ib 0��Il ����i2 ����iE ����iI ����iJ ����iT ����iX 3��ij �3��in ����i^ ����JB ;����JI ��JJ 	Y��Jb +��JI �3��KB �3��KM �3��K.K. �3��kA �3��kHz �3��kPa �3��kV �3��kW �3��kcal �3��kg �3��kl �3��km �3��kt ���L7 �f1��LC ���LE ���LJ e1��LL �2��LTD ���Lj n��l3 ���lj �3��lm �3��ln �3��log ���ls �3��lx ���lz �3��MB �3��MHz �3��MPa �3��MV �3��MW �3��mA �3��mV �3��mW �3��mb �3��mg �3��mil �3��ml �3��mm �3��mol �3��ms �3��m/s ���NJ $$��NL ���Nj !��No �3��nA �3��nF �3��nV �3��nW ���nj �3��nm �3��ns ���O2 A����O7 ���O77 B��OC RvJ��OE G�1��OO xy��Ov `���oH u3��oV S��oe ��"��oo ��ox �3��PPM �3��PR P2��PTE �3��Pa � ��Pts �3��pA �3��pF �3��pH �3��pV �3��pW v3��pc �3��ps �3��p.m. 9��qp � ��Rs !��Rx �3��rad �3��rad/s  !��SM �3��Sv �3��sr !!��TEL �3��THz ����TI "!��TM ��Tn ���tc ���tf z��th ���ts �3��uA �3��uF �3��uV �3��uW k��ue �3��ug �3��ul �3��um ��un �3��us �3��V/m �3��Wb 70��XX ��xx ����zH ����zl l"��() 4 ��''' W ��'''' 7 ��``` 9"��-: 7"+���:: < ��!! I ��!? = H ��?! G ��?? $�8�% ��.. & � � �"H-��... � ��....  0��,, I�M���--- J�N���-.- o��** ��*��>< �"./�]��<<< �"��>>> V��>^ ���>V _���(( `���)) @��() 4*��(X 5*��X) U���)|( �&�)��O|O �&�)��O-O �'��O- u*��== v*��=== ^���++ _J$�,��\\ 6 � �*�,��// �*��/// �0�1kQ����/\ �He	K � %"��|| �)�*�*�,�,�]��||| �)��|=| ����|X| ����|O �	�
������.| �������|. ��+���bb 	���D.S. 
���D.C. j��HE ��oo ?��SS ����tr @���zz ����.. Ї� ���... ����.... ���::: � �N�����,, 	����''' ���-<  ���>- � ��-> W
�%�j���|| k���||| l���|||| m���||||| ���-| )���|- ����// ���\\ ��== #��<<< V���() ����(.) -O���ѽ���������1�K�S�kׅ׍ץ׿�����(|) ����(/) �үֹ��������#�-�=�]�g�wחסױ���(-)  '	Ѵ���(+) E���(x) $ ��(==) ����((+)) X ��[x] 7��)( ��� ��|4L\ T��/|\ V��/7\ U��/T\ ���<<< ,^��*B '^��*J w�����#B l�����2B {#��5t A1��8^ W1��82 @O��87 G1��8C R1x1��8E AO��8t ;1��8Z � ��9P ���B5 ���BB ���BI j���CB Ti��E|3 Qi��E3 � ��EE 
��ee  ��I4 � ��IL  ��IJ  ��IJL ��LJ ���O| ���O|J k���OB ���o2 9���o4 ���o7 ���o8 ���oL ���oZ ���ok ���op ��:���ot 
��PP i���tB 
��tp ����tt 
��ttp 
��xp 
��yp ���Zo � ��ZZ ��   $��NUL  $��SOH  $��STX  $��ETX  $��EOT  $��ENQ  $��ACK  $��BEL  $��BS 	 	$��HT 
 
$��LF  $��VT  $��FF  $��CR  $��SO  $��SI  $��DLE  $��DC1  $��DC2  $��DC3  $��DC4  $��NAK  $��SYN  $��ETB  $��CAN  $��EM  $��SUB  $��ESC  $��FS  $��GS  $��RS  $��US  $��SP  !$��DEL � ��XXX � ��XXX � ��BPH � ��NBH � ��IND � ��NEL � ��SSA � ��ESA � ��HTS � ��HTJ � ��VTS � ��PLD � ��PLU � ��RI � ��SS2 � ��SS3 � ��DCS � ��PU1 � ��PU2 � ��STS � ��CCH � ��MW � ��SPA � ��EPA � ��SOS � ��XXX � ��SCI � ��CSI � ��ST � ��OSC � ��PM � ��APC ��SAM ��FVS1 ��FVS2 ��FVS3 ��MVS  ��ZWNJ  ��ZWJ  ��LRM  ��RLM ( ��LSEP ) ��PSEP * ��LRE + ��RLE , ��PDF - ��LRO . ��RLO j ��ISS k ��ISS l ��IAFS m ��AAFS n ��NADS o ��NODS ����IAA ����IAS ����IAT ����OBJ ����REPL ����ZWNBSP ���E���wL���\N��� ���-���� ������� ����� ����� ���� ����� ���� ���� ���� ���� ���� ����� ������� P���� [����� ���� ���� Q���� 1v���� 0wP�Q����� ���� ���� Ax���� �L���@y� �1������� 1����� �e#������ �)d#���� Qz�������� P{�������� ����� ������ ���� ������ ;<� � ������ �� !������ ���� ����%����%����%����%�%��ۄ%��܌%��ݐ%��ހ%��� %����#�#%����n�������C###�#�#%�' ..00�1�b�������*p�"�#,%�'�*�����I�B!	###�#�#%A�������"�"%�'u,v,�.O1������<%�'�����"$%�'�*S1b1������������"
####�#�#%=*�B��������"�#4%�'�'�*&0W1N)������������������C!###�#�#�#%�'<*00�c����P%���HQ%���T%���f%���W%C�����"`%���l%�'���c%�*V1�����Z%D����i%���]%���R%�*��Ս�Q#d%�*0��ѿ�U%�*����"�"^%Q1����ƃj%�*���a%�*U1������X%���J#g%�*'0��ϵ2!N![%���S% ����r�e%�*�����V%����"_%�*���k%�'�.]S]����b%�*T1������Y%!���Ӈh%�*[1�����\%����� pq���������������"v#z#������ �&�]f�,�,�.�.���3S�����l&>!�#�,�,1����?�����p(+<!?!"�,�,�.�.�./`1�4N�N�N@Q�Q�Q�Q�Q�Q�����@!"
*����1����:!��� ��������wx��$D�@��=#�#�),G,�,�,@-��=����^u����rs����@�����"�"l#�)I*�,�,1-������Y�����/5hijklmno�����������&!���n�
�_i�"�,�,����S`w,A-�����[����T9:dD	l	l
�
�
N�n�?Sf	�K�rs� !0!"
"�"�"�"�"�"�"�"�"w#�,�,��£@�~����� ���� ��� ���� ����� �
����M�~-6��5\,0�0�0�(��~������Z�"�&������� #���!#���p"�#���H ��01245`abde��"MNOYZ[\h`abclAI�T)"�"�"#���  /�X���d"|"~"�"}*�*���e"}""�"~*�*���� �;-���LH"����a"0&�,�,�1	N��� j"�'�*
01�1�]���� k"�' *�*0���� ���� ���� ��M���#���� ������ ������`'�
|" ' ""�"�"�).0�0�1e����� R����C "�%�%�%�%�%�%���������������������������������5������������� B-�)�������� �����-�����e����B����0���� ���f����o����/��������6����B����7�q׫����C2
2,Ҫ����Xג����@�з������+�E�e�ן׹�������.�hע�������Hׂ׼����A
���A׵�{��������������0�8�I����-O���ѽ������1�S�k׍ץ�������үֹ��������#�-�=�]�g�wחסױ����#����4�nר����T�������9�O�s׉׭����������Kׅ׿����4)�S
_��!������� �	��:�C�P�t�}׊׮׷������E��������i�l�bӵ���)�cם���� ���	�"G����m����������� ��ن ���'(���=�����;?N	O	�	�	�	�	�	�	�	�	�	�	



C
F
I
J
d
e
�
�
�
�
DFNUde����������������NTde��DENVde����������Z^NO^_������<?ACFGNO~����r s �&�&
''S'U'_'`'�'�'����������������������9;=>'�)ѠԡԣԤԧԨ���G�I��������	�	�	)
1
4
7
]
�
�
�
�
�
�
�
)14^���)4EI������)������������H�"(IWY�����mXZ\^����� '('L'N'W'�'�-�-�-�-�-�-�-�.7�=�?�B�E�S�g�u��� ' ; > 	6


UԝԭԺԼ������:�?�E�Q���psvy�0WX��������
KLn����:	;	U	W	q	z	�	�	�	�	�	�	�	�	�	�	:
;
N
X
_
c
u

�
�
�
�
�
�
:;IJX[bcr��������:=W_bcp���������� :=X_bcp������������;>\��������kp������35:?Z���������[^}����w����7?T_t������x��,/nou������LO}������d i � � � � � � P!R!�!�!�#�#'$?$K$_$�&�&�'�'�'�'++$+�+m,s,x,,�,�,&-/-f-n-p--�-�-....�.�.�/�/�/�/�0�0 11-1/1�1�1�1�1D2O2�M�M��������ǤϤ��"���,�/�x���ׯ�.�/�k�o�������������@�O�����������$�/�l�o���������������N O ^  � � 46��$/KO��������		

4
7
;
>
H
O
Y
_
o#�#c$o$t$$��������F�O�W�_�r�Ӧ֧����׀�����צߦ��������      �������`�� _ 	�	�	 

=
�
�
�
 �� ���I� ����+ q�O! '�'/,_,�-@001�12�2 ������� ' ; > ��� �ۀ��� ����� ��� ����-�-�/�/����Ф��0�?�������������P����@� 	�	`
��$��P��Ҁ��� ������� ����� � ������ c�:�7 �s
�J �p u��;�.3��� 2��G
�t�p��	�C��	���L�!QWV��I��� �0� �^_Y�PSR� ��/
�t���/r�M��f��!r�MZ[X�PSWV�6 t%�]�O��? t�
�t:u	CG��= t�	���X��>X�^_[X�PQWV� H�ؾ �O� ������&�>O ^_YX�PSV�� �Ot��r��>}�t���6�I	�G2���^[X�S��� t� r
�8 �Z s�� s�����[�PV� s�� r�� s�<_t��� t���^X�PS��<0u�<0t��8<Xu�� s����N�[X�SQR��3۹ 2��j s<_t�����sN����N
�t	��z tN��������ZY[�SQR3�3۹
 �d t!,0<	wN�,02�;�s���r<w��������N���ZY[�S��� s� <Ar<Fv����,7��[�<0r<9v��,0��P�x <HX�� t�
��P�< t�<	t�N<X�SR�Ѐ? t22�V��L �. t��C�? u�C
�t
^�? u�CC��XK�C�u�C������Z[�P� �Ċ� :�X�PS3۸�[X�<ar<zw, �PSQ�΀>X�t�z�t�! r�p�u
�Y�[�
�}������Y[X�PQR�����J�t��r���5�t<:u�5�t	�w�r����������ZYX�PSU� �F �u�t�@��][X�&�?��t&�?�u�LCC�&�&�o���Lt�������v����QR3�&�CC�Lt��= �r<=��w7=��w/&�CC�Lt��� �r����w- ؁� ܺ �����������ZY�SQV��3�3۬����s4��s*����s
����u���r��������* r
�= �\ s�� �������^Y[���t�@uF���PQV�$�<�u��u�����^YX�PQ�$?���������sE��sC��u���u�YX��u�� �r	����w����SR� sP� sK�� sF�� sA��s<�;s7�js2�s-��s(�u_�/�+r�
���	�U��1�r���|���B�B3�r����������)�v3��r�����3��r�C��	���g�Z[��u
�u< r<~v���H��SR�u��A�r��= $r
=!$w��	�|����[Z�R=��s��w�u
=��r=��v�����Q�Z�SR�~� sB���ys:���s2���u
= �r=��v!��t��u=��v�u���3T�Ys�����Z[�S��r	t��t�����s��r$��s���.��s����[�PR��t�u(���r#<w-�����u<�w-� ���(���q����ZX�PSR��u0
�u,����<t��< rt	��<wr�������������*�Z[X�S��3��r��>t�H@��w�Fs����[�S�u��S�rsQ��P�esI�D��u�%T�[s:�)S�Ns2�-��u
��S�?s#���u
��S�0s���s
=��r=��v���[�S�u��O�s"�yN�s���u�qP�� s��O�� s���[�S�u
�AT�� sF�A��u
�oT�� s7�2��u
��T� s(�#��u
��T� s���s����v���9�v���[�PSV��D��r� Et�E��u�M�<�t;t����\� s�����^[X���� ������Q2��Q��PRV���ރ<�t!�=��t9�t���
�t�
�u���=��u�������^ZXY�Q���Q2�V�ރ<�t
�u;u�FF;D�r;vFF�����^Y�PR���� s���ZX�PSQ� 0�!��= s���Y[X��t�� �u�' ��( �=� w� �� �S� �S� �S� �	S� �S3�RW�9���� G��	 ��_Z[�PS��� [XÊ�� ������ ���'@'��PS2��PS��PS2� �PS�QRV�F2۹'3����u
�u��t��u� ��u��dv�	��0����t��P3҉ȹ
 ���X�^ZY[X�QR
�t
2��H�� ��ZY�R���qR�<�lR�>�gR���bR�[�]R�]�XR��SR�:�NR�C�OR�{�CR�}�>R�.�9R�=�4R�h�/R�-�*R�(�%R�)� R�+�R�?�R�"�R�H�R�_�R�J��F�F�d Z�.�>F�tS� �S� PQ� t�@�!YX[�R��� Z�PW��2�������I_X�QR�����A�ZY�� ����R���
 Z�R��� ZÃ>Y�t�>X�tPSQRWVU�Y]^_ZY[X��� �R�G� Z�PSQWV�F�<�tj�< tb�h s�  �W�z �D�@AA�>Jσ�H9�r"�G�H Q+J��A�����Y�<�t$�< t�.J��HJ�D;JsH�J���^_Y[X�PSR� D� �!r�₀��t���Z[X�SQ�@ �ش�����t���t�� u3��� �� @Y[�� �PSQR.�F=��t@�t9� .�J�.;Dr%t.+D+�� �� �����������]�� �.�J�Q�ZY[X�PSR�F�N�=��g �l t����/�<t<u�  ���������H�J����Z[X�PV��3ɬ
�t<
u�A���^X�PQW���װ
����Ku���_YX�P� u�Xô�t2���3����]��Z��PS�J�0�![XÐ�PrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStackPrgStack