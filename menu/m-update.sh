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
BZh91AY&SY��� ��E�@ ���?�������@�D@0  `��yO����]�H�#M  Cz �0B`&F�2hѣM��@�M  2@"b�4ډ�#�L �hɁ6��������P�R<�C��H�S�4�hi� � ��)�0ji� dM  i� F�AHL�'�d�S�B�Q���Ԍ�I��4�Sz�ЄP(M�]FIOO}�_�т�k,ڟ�A3b��0� 9�I0��W ߬.��2�a�t�KQ(��OQ�bt�ח�l+^���hdQW؆� ��|1.��5�5�_�f9lٕMr�Kl�j���%���Ms�E"�d��˒��S��94�����ic*�k��v��d^u��_��q��(���m���GZQ�qgZ������[���A���AqWj{H      �}z��9�߄�x,ˮd���}ukc����!!�*뵊�H}�ͮKסB� BrkYҭe����XB�kYLT�L�ܯ��>&;<�[���7I{ՂWc��ц~Oe�L"yaH�����eĚ��@��+�,|��=����c��� �0���"c"�. /'q$��;#�r D�p����H.uCD�
@`lnn��޸W�E�����;��zq�+K׀�/��V9�^UYY�v�i��fR��%܂��+.��{\�~��Pi�$�lh�8HHHHHHHHHHL�H�b����ښ*�j�������,[4V�$��.5�_� Oʧ����yr5jхO���n�� ��ۮ�Y����Qb��|b�S��6�K�'�l-�S9���pqD�j�B�$E�K�d��7��ڐխN����p��+t�ƙ�n�v�0[�g1E��{�+�����[�Pý�a5@�4���`hi����[�u5)p�������|W�e�u�uǀ�[���RRHO�+qMHf�HڂTkcq$������N�y[ab�$������ރ�\���Vȴo�8��~ـ�zG���y,^��9�/<ʇ�4�79j�w��O
m:9�MD*T�z�Z�K2��|�/��3��u�Ԑ��x/&�}ن bE�jj����D�S�%�^Y[e��JVS�)Jr)%1�ȁ�'1zn�^�z�z�|Wn��l�$�5H�+�l�Z�T��+����m�8&����V/9 �� �bc&=� D�r]�Ā��x� x���1�=(��l�^��7���@?zn��'.�C|�3�JP�������WM�W\�&1�c�1�c��c,�U�vJ/�ކ���< t@�(��Ą.�BBB�R
�2��������J{G�W\R�G��G��iE�`j1)W��ٖ#���9��[��₈B���V��k�OtnC�xsU��<�	���W�V���Vqb�T�V�[2#��D@<K,�^DM� >3�V����x`��! gID��	�z�x�>�<�s2�� ��{��\�N��r��y���ns�BB\+���A��+�]�!�����l;��Ey�1���c�t�5��华,c�9o��*�I-��*���!"�
�����-��[L䓬ϰVȭ�8��G=��Q$�IAEI�*�;��2����n��b�7֢���4hX��oo`:��y�C���!���5���O���)�8=�