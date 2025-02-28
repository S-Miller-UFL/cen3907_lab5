�aTHRUST 1.16, (C) 1998-2009, Bret Johnson.

 THRUST returns low-level information (raw numbers) about your game port
  and joysticks.  This information will probably not be very useful unless you
  understand how game ports and joysticks really work.  Read THRUST.DOC.
There are two methods THRUST can use to look at your joysticks.  Depending on
  your exact hardware and software, one method may work better than the other.
The first method uses the computer's BIOS.  If you are using a compatible
  digital joystick driver (like my SDWRGMPD or USBJSTIK programs), THRUST
  will automatically use the BIOS method.
The second method looks directly at the I/O port hardware.  THRUST uses the
  direct hardware method by default if it does not find a compatible digital
  joystick driver installed in memory.
To have THRUST use a specific method (BIOS or Direct I/O Port access), whether
  there is a compatible digital joystick driver installed or not, use an
  appropriate option on the command line:

    THRUST B                               (force BIOS method)
    THRUST D #, THRUST P #, or THRUST I #  (force DIRECT I/O PORT method)

      The # (I/O Port Number) is optional, and can be a decimal (512-527)
        or hexadecimal (200h-20Fh) port number.  The default is 201h (513),
        which is the correct port for 99.99% of all computers.
 �B
Press a key on the keyboard to stop the test.

                 COORDINATES           BUTTONS
   ACCESS    �������������������   ����������������
   METHOD     AX   AY   BX   BY    A1 A2 B1 B2   15
 ����������  ���� ���� ���� ����   �� �� �� ��   ��
  BIOS         Port         On  �� 
     0000h                ���)��� �f �g� ����t�u�s��t�h������u�����������s�����������Mt������ L�!PSV�� ����g < t�
�tA<Bu
�� t5�+<Dt<Pt<Iu��k t�u r= r=w���T t�1�f�^[X�PQW�� �� �&�E� _YX�<ar<zw, �P� t	<:t<=tN��� �X�� t�
��P�< t�<	t�N
�X����t� r
�6 �X s�� sN����PV� s�� r�� s�<_t��� t���^X�PS��<0u�<0t��q�<Xu�� s����N�[X�SQR��3۹ 2��j s<_t�����sN����N
�t	��z tN��������ZY[�SQR3�3۹
 �4�t!,0<	wN�,02�;�s���r<w��������N���ZY[�S��� s���<Ar<Fv����,7��[�<0r<9v��,0��P��<HX�PSQR�������r�t���ZY[X�PQRV��� ��?��^ZYX�PQRV��� ���< t������^ZYX�PSQ� �@ �ػl �;t���Y[X�P� u�Xô�t2���3���PSQRWVU���� ����� 3���� ����� ��)Ɓ�'w)� �8���t�0ش��� ��t&�5������� �
�u��]^_ZY[X�SQR� �3���s��. ZY[�PSQRW��� ��s3�3�3�3ҿ���ë�ȫ�«_ZY[X�PSQWP�б��2䣧X��� �ķ� ��u�������_Y[Xð�C�@���@���PSQRW� �|PW� �_X2۹'3���
�u	�u��u�È�0��tPR3҉ȹ
 ���ZXG�Ϻ|�B _ZY[X�RW����� �/ _Z�PS��� [XÊ�� ������ ���'@'��S� �S� PQ�
 t�@�!YX[�PW��2�������I_X�