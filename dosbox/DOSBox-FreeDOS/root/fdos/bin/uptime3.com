�� ���D������ �9�: �4=-ht�=-Ht�=-?t�=/ht�=/Ht�=/?t�=-rt�=-Rt�=/rt�=/Rt��ǴL�!�� �3f�pf��u�r �t� ���:��u� ��:��v� ��~�ff�lf�pf+�f3�f�  f���`�º��C3һ< ���N�º��1�C���(2��P2��p�q���p���q���p�q:�t
����L�!��p�q���p���q��p�q���p���q�k �Xú
�� �� ���� ���fP2��p�q� �v��p�q� �u��p�q� <�v,u�t�v�l�uk�<lf�tfi�  flfX�fP��p�q�I �}��p�q�= �|��p�q�1 <�v,u�{�}�p�|k�<p�{fi�  fpfX�S��$���؊�$���؊�$؊�[�P�	�!Xô�!�R����!Z�PSQR3ɻ
 3���P��0XRA��u�Z�!��ZY[X�PSQR3ɻ
 3���P��0XRA��u�Q+�� v
�β0��!��Y�Z�!��ZY[X�                    up $ hour, $ minute, $ second, 1 user, load average: 0.00, 0.00, 0.00
$
$Uptime counter reseted to zero.
$No CMOS available to write.
$
UPTIME R2.60                       (c) 2017 by Javier Gutierrez Chamorro (Guti)
Display system uptime under DOS

UPTIME displays DOS uptime, by automatically detecting when it was firstly
booted, mimicing its UNIX counterparts.

Syntax is: UPTIME [-h|-r]

Examples:

	UPTIME -h
	Shows this help screen.

	UPTIME -r
	Forces reseting the counter. Useful if it is not automatically detected
	properly during startup.

More information at:
	http://nikkhokkho.sourceforge.net/static.php?page=UPTIME
Press ENTER to continue...$