�� ��"�D������ �9�: �4=-ht�=-Ht�=-?t�=/ht�=/Ht�=/?t�=-rt�=-Rt�=/rt�=/Rt��ǴL�!�� �=������u��u�r 2䠆� ���:�2䠇� ���:�2䠈� ����r�~������+�ѻ���l�º��O3һ< ���Z�º��=�O���42��P2��p�q���p���q���p�q:�t
����L�!��p�q���p���q��p�q���p���q�o �Xú�� �� ���� ���PSR2��p�q� ����p�q� ����p�q� <�v,u��2䠈�~2䠇�< ��~2䠆���~�Z[X�PSR��p�q�M ����p�q�A ����p�q�5 <�v,u��2䠏��2䠎�< ���2䠍�����Z[X�S��$���؊�$�������؊�$؊�[�P�	�!Xô�!�R����!Z�PSQR3ɻ
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