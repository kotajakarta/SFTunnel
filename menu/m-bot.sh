#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYV��- ;_�m}����������P F �  `�����n���u+u�Z
h�CI4�;�(�jm��z=I�4�i������4�0��@Ɔ��   @  �� 0�CF��@      @d $E?(�(a��<Dh�h h�� �=@   I5=M �5=Q�S��!��#�=#@  6Q�4z�D� �A4��3T���F�yF@�hL5SM =M 4�"z�yOa�����Λw��'I��@�M���)�P��ڷ*>c	�V�
+�+q�#��3�W߇��VAfj~�EU��e�h.��S"���ɶ<h�ݬ�����k��b3�T(�RXQ!�� Z�qc5�i��y��B�T�[;�hd�?2$���YPo���=�2B(�)�1%��<ȯstGH�e�F�e5A'PY�F��)�Y�:/�+	J��q�܂���~J����^�L#�2��2{�n8��(4`�ma�ڞ��:��W0�
S��s�,���Vh����h�dpP��
6�>�O,�W�Hg�
��#��*������C@2
L�g��ڼy��(��H�˓P�IZk^�7�&�̵C�ؚn�pd��wX��z<|F�^^������Z�zdSf�Ek��N)�F�A��e!y-�֋�Y�e��ܱb��͆�Y:R��v��02���
�w.��x��,���{����1�Lo��C �5%�U�L1�@�08�Z�{s3+J�⥚̶2� ���I k#�"��OJg7M(^^�c�ƒU�9ɉ4���J(r	��!����u������Ƅz��Q',�#z7oop-��J�2جs�Z����X�><V�s�,.8�(���+���g:����)�S�1����Tń1�!���-������R�	�)�����ϧv1M�i�������v�(7{p��`E��� ΙI-���d������B$�Nb�븰�kd��韭�'#���"sS��P�N	�f���k�B��#dP&�m��mC�����_��t���Kq�ZU����h׭Bm��o^�=�^ǖ'Q�L��ҡMoA�ɨ ��d�P�,���DDD��Z�c[��B&53m P���D4�TZ��mtخ���\\�aP�[���h��(x
�Wק�H���]�c�@����`�Fw�TF�N9��N}2�����	h��l���țCI���2D�\6v0W�ȷ��#3�^?&!�W����Jt04�ڼ�i�s��\l��z鑶�0����T%D!�#��G�NCM)y��G;|%�u�A��k�7﷈�J�0��)�)�ʓ����A��G�6|e��$�UU#PVp���
��)��WہXeV�(�vV�4R"�N����Wd*�S�9{��U!���13�!�k	��o���9��d$�5L2:(��%�B��K��\zA+P�S�d>��ͻh��7�l��.A{B����[�ͮ�T0�{5�@B,�Ɲ��XF�}_��j�E{瀬�����H��Y�Vs�X�x^�$S�n�����ART瞍h�,Jr���2Q����$�sLFYG��A����7�K�d��*By��T�Q��R�s^�_�D��,"�WZB�cRb�!��+H&{��ip3�\j��8+�Z _P��N+��U6:��0mF�5�2(�Hla�*�`~uo�~=���uG�;b�]B1G(TA��HM)}$Tn~�50fq�0�H<Y�\�56�I�e��z(�hf�%2����Z��;U����쐋O��km.�q��k�	o;�e
(ݼH[_%P+e��'�jа���ܩeDT�0����⢁�f ��G�x>ٱ ����hć���,,.���4�E�0)�/�E�K�����l��=e@@�[A�P��kV���E���U	4<�xM�K2�JW6�m���+i�8�f��2�tE\����@8;���h0W�WVa��`6
�t��:�;�pL7�$�R���#�A���0����$�A逤=4�e���lI.{ɺ�$e���:B�k�9l�b��3��C5�K��:��1�4CD()p�#��I�Mq���38��Y� ��%�cc֗v7�9�e�/�߯��l=���Zn�KwQ�'�m�t�Eh
Ѽ���g�3��o��6-��X�Yz�hZE,֩PR2H�j%����I�^�/Uj����(ⅆ hc��hqL*%�Ы�4��ܜ��R�?�P�^maha�Jqk��m0N�p�/�_8H�ty�:���z����@��sO7�&U0��������(!DDД��JC&Cd�M<`�H%0�+Ts�z	%P���Ο�AYEڢ�MP�/	A2�m�*D]�#=�۵	����X{@j�*���P�˃R\�����4�>��^;����)#�l���%��$*~o�4͡ 3��bk�"�#���??>���mϣ����f�kU�Z�ƒXR�G�.B'5��EdC�n�Mn`wp��Fpv��ޢ7\0TXaj$�`I�s*�d�� U��ݒ��W�W0�0"vM�!�`,EAnq�5��TO������h�Y�] ��m�הo��@�"�Դ6SM�C_QLD0�)�!V��THj��G%fI��2o��-�$[R5�:�#"g'λ�AEPVV[@V���U�E#m�m6��0�`cB��I�0��$˔ �m�&�boWR5#gr�+5�
�CV�l�X@��R�0-
����)Wah
/16����AJ2�e�[���rm"�� n���'n��A���Liލ�a�����v� �I�W&�+�&u�|�P�����6�z;K�����b����i�BL�4���POR,0I�\S�Uk,�fB��i�cŻ��9I0@����|�bo����<�����A�$�L�rZ?�(t�,�PD
 �)���.�p� �GrZ