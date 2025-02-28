�IRQ 1.00, (C) 2008, Bret E. Johnson.
 
The purpose of this program is to show you which Hardware Interrupt lines
  (IRQs or Interrupt ReQuest lines) on your computer are currently in use.
  You may want to know this simply as an academic exercise, or may need to
  know in order to configure or troubleshoot something.

Note that in the output some of the IRQ descriptions are surrounded by *'s.
  This indicates that the particular interrupt is hard-wired on the
  motherboard, and is not available for use on external devices.

In addition to just showing you which IRQs are enabled, this program can
  can also enable or disable individual IRQs to help you identify and
  troubleshoot things.  You should be EXTREMELY careful when you are doing
  this, however, since it can cause your computer to stop responding.

To enable a particular IRQ, you simply give this program an IRQ number
  (a number between 0 and 15).  To disable a particular IRQ, give this
  program an IRQ number (between 0 and 15) followed by another character
  (any character will do).  For Example:

  IRQ  3       {Enable IRQ 3}
  IRQ 12 D     {Disable IRQ 12}
 �
IRQ  INT      COMMON USE       ENABLED
���  ���  �������������������  �������
  00  08h  *System Timer*         01  09h  *Keyboard*             02  0Ah  EGA Retrace/LPT2       03  0Bh  COM2/COM4              04  0Ch  COM1/COM3              05  0Dh  Hard Disk              06  0Eh  Floppy Disk            07  0Fh  LPT1                   00  08h  *System Timer*         01  09h  *Keyboard*             02  0Ah  *IRQ Controller #2*    03  0Bh  COM2/COM4              04  0Ch  COM1/COM3              05  0Dh  LPT2/Sound Card        06  0Eh  Floppy Disk            07  0Fh  LPT1                  ���  ���  �������������������  �������
  08  70h  *CMOS Clock*           09  71h  n/a                    10  72h  n/a                    11  73h  n/a                    12  74h  PS/2 Mouse             13  75h  *Math Coprocessor*     14  76h  Hard Disk              15  77h  IDE Controller #2       Yes
 
 
IRQ   has been  Enabled.
 Disabled.
    �����C �� �� t3<0r'<9w#N� 
�u�؊&A	��:�w�� t�B	 �6 ��+�[��� � L�!PR�� �<�u����PX�İ������u�A	ZX�PQR�ú! <v�� ,�������>B	�u"����
��	�� ���� �	�� �'	�>B	�t�2	�� ZYX�SQR3�3۹
 �. t!,0<	wN�,02�;�s���r<w��������N���ZY[�� t�
��P�< t�<	t�N<X�PSQR�R �غ��~ � �>A	u��� ���� ���` �
� ZY[X�QR� R�L �
	��u�	�? ��Z�� ��ZY�R�� �ĺ! ���Z�PRW��Ŀ>	���0��
r�1��
���0&�%� _ZX�S� PQ�
 t�@�!YX[�PW��2�������I_X�