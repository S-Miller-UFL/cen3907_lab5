�dPS2MTEST 1.00, (C) 2007, Bret E. Johnson.

 SYNTAX: PS2MTEST #
  where # is either 0, 1, or 2, and is the maximum number of wheels
  that you want this program to look for.

  0 = Enable the Mouse as a "Regular" Mouse (No Wheels, Max 3 Buttons),
        even if the Mouse has Wheel(s).
  1 = Enable the IntelliMouse Protocol (Max 1 Wheel, 3 Buttons),
        if the Mouse is capable.  Do not enable the IntelliMouse2
        Protocol, even if the Mouse supports it.
  2 = Enable the IntelliMouse2 Protocol (Max 2 Wheels, 5 Buttons),
        if the Mouse is capable.  If the IntelliMouse2 Protocol is
        not supported, enable the IntelliMouse Protocol.  If neither
        IntelliMouse Protocol is supported, enable the Mouse as a
        "Regular" Mouse.  This is the Default.

This program will simply display the "raw" data as it comes from the
  PS2 Mouse BIOS.  It is designed as a testing program, so may not be
  very useful if you're not writing a program related to the PS2 Mouse.
  Then again, you may find it interesting to see what the Mouse BIOS
  is actually doing behind the scenes.
 �                                                                                                                                                                                                                                                                              0000  
       Locating and Resetting the PS2 Mouse (this may take several seconds)....  Could not find a PS2-compatible mouse to test.

 The PS2 Mouse is IntelliMouse-compatible.
It can have at most one wheel, and as many as three buttons.

 The PS2 Mouse is IntelliMouse2-compatible.
It can have as many as two wheels, and as many as five buttons.

 The PS2 Mouse is NOT IntelliMouse-compatible.
It cannot have a wheel, and can have at most three buttons.

 Press any key on the keyboard when you want to stop this program.

                       �������������������������Ŀ                           
                       � Buttons �Motion �Wheels �
                       �������������������������Ĵ
 RAW PS2 MOUSE DATA    �L�R�M�4�5� X � Y � 1 � 2 �
�������������������Ŀ  �������������������������Ĵ
 LRM45    

Restoring Original Mouse Driver State (this may take several seconds).... ��0� � ���*����������r]�0�k���< t�Ǻ<t�q<t���9�������r,���»��r� ·�r�� �N���l��Lt������ L�!PV�� �<t< t�<0r<2w,0�j��1�� L�!^X�PSQRWV�
���r�t�r�m��<rS�p3��n�� ���2���r*�� t%��@u �w�v��t�m����r�>x��p  �&m�^_ZY[X�PSQRW�muJ�n� tA�ڎG� �� &�E;�pt&9Uu&�=�t
G���G  ��?��p�t��n�r�m_ZY[X�PSQR��	�����mt^��j �>xr��jt�j���� �t�r����>v�a ����>w�����mt�Ǹ��� ·����*ZY[X�PS�ô���s!�@ ��&� ��=P v&�  
�t<
v�����[X�P2�Ƿ��<v���X�PS�k �>j t[���������������������u5�>k�>jr*���������������������u�>k[X�U��PQRW����>l t)� � �7W��� �.OO��_�,� �C �` �~�5�_ZYX]�PQV�#���>ku	�C�$0��
ྲ	� ���r� �� �� ��^YX�P�>k u�C��c���C�c��F ���K X�P3��>kr#�C�t$�t�< t	<�t� ��<t� � ���
 X�P��� X�WV��	��	�WV��	��	R��< t������w �V Z^_ô�t2���3���S3�RW�y���	 ��G _Z[�PS��� [XÊ�� ������ ���'@'��R���R���R�������� Z�S� �S� PQ�
 t�@�!YX[�PW��2�������I_X�