�SIG: FreeDOS TOUCH.COM version 1.4.4, 2010-04-06: English; CREATE=Y;   TOUCH: Requires DOS 2.0 or later
$�TOUCH: Insufficient memory
 �
TOUCH -- FreeDOS file date and time setting utility 1.4.4, 2010-04-06
	(c) 1989-1995, 2010 by K. Heidenstrom
	k@heidenstrom.gen.nz   rugxulo@gmail.com

TOUCH [-?] [-C] [-Dpathname] [-F] [??-??-??] [hh:mm[:ss]][A|P] Pathspec [...]

 -C		= don't Create files that do not already exist
 -Dpathname	= Duplicate date and time from specified file
 -F		= set time to File's version number

Notes:
	The date format is determined by your COUNTRY setting (CONFIG.SYS)
	The character '/' may be used as the date separator
	The A and P (a.m. or p.m.) suffixes on the time parameter are optional
	If neither date nor time are supplied, current date and time are used
	Non-existent files are created unless -C is given
 TOUCH: No files matching  TOUCH: Couldn't create  TOUCH: Can't open  TOUCH: Access denied to  TOUCH: Couldn't find version number in  TOUCH: Bad version number in  TOUCH: Unable to touch  0TOUCH: Unable to open file for -D option
 
 w�w|||}hbfddmmyymmddyy--.HRRH\\H  -/                              �0�!<s3�K�	�!� ��.�7C� X�L�!� ��C>�� u���)�It�@�!Ì�2>; �nsʼh�X��!� 8�!�6X��r1��0�!<��nr�c����6���\�N������*�!�����6����,�!�.����6�� 7�!���L�5 ��
�u������>� u�>� t�T� ����L�!� ��� � rVU�����]^��Ê��<�t�< v�� NV8�t8<-t4� ��t~��<-t
</t:�u��x �f8�ub���k �Y����M�Q<:uK�X �F����  <:u	�E �3���Ā� ��au��>����pu����>�u�.��< v�_���< w�N��0��1�1ɬ,0<	w�P�
 ��Z�A��0<uN�G� <cu���P<duC��
�uJ��GV��������< w��E� ^� =�!s�����ø W�!�����>�!�<fu���} w������6�t��>� uﾋ�����s㭣���<sڭ����<s�À6�tɀ>� u.���DDu��@����í��u���q���yã�H��s�ã�H��s�Ã�ds
��Ps��d�-�����xs����ÿh�P r�)�X��!�h1ɴN�!r&��u"O�}�\u�V�vW����u�_^�� �O�!r��t�ûa����h����I���É���� �<:t��!ANNF�:��\:t����T���@�G�!��0��A �O�\:E�t��� < v;<.u�}�\u�� < v)<.t<\tު�۬�n < v<\u�^9�rO�}�\u�< w�N0��K�<*t<?u�9�v<\u�}�\t'��u(� �,��!�� �N�!r<t�At
�\��.*������  ��<ar<zw, ��� �h�=�>�u0��!s)����t�>� ��u��t�{���1ɴ<�!r����À>� ����u_� W�!�>� u�>� tQ������A���Y�>� u�>� t������I������	��>� t�>� u� r
�W�!�s	P�>�![�N��>�!�R��� ��?�!ru��r���1��Q�װV�Y��Q�װv�Y9�v���)���K����< td<.t`<Et
<0r�<9w��S�����<Ru��< tE<.u�< t<���<Su��< t.<.u�< t%땸��_��<Iu���<Ou���<Nu�< u�<F�,0<
sԈ�1Ҭ<.u�,0<
s�Ƭ<.u�,0<
s�°
�� ±�����I�����r�����Z�