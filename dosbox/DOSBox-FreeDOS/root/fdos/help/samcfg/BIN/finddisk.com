�$%�N�!�� �F<	t�< t�r*<+u�����:u$�,Ar<w@���� F��</u�	���!� L�!�Ͽ�<*t��< r���r��ܰ?����r�����!�t�>� t���>�v�	���!� L�!�� ��� ��%G<?t8�u����P@���	���!�>� tZRJ��!X�L�! Public Domain disk finder by EA 2005

Usage:
  FINDDISK [X:][+]LABEL
Search LABEL on drives C:-Z:, case-sensitive.
  X:  check only 1 drive
  +   go to the found drive
  ? * wildcards, e.g. DO?-BI*
Returns:
  1,4,... A:,D:,... matches
  0 no match
$echo Match on
X:
$�                