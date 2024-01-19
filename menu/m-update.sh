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
BZh91AY&SY��N� ��E�@ ���?�������@�D@0  `ٟ}|��6��{�7i}��URT����F����m����@���)	�"���C@h hɠ�  �"H�7�4�=M4  ������h ���)���Q�FM2a24ha2a��4`�!�$��e=S�M��M<�hh4 �    D�C@���i���oJdMSF�� h�zH�A
C�F���N�M*���#�P�)]�1\Y�չV��e7f�}p�Q����3Q��}TQ!���,y|ƤCX��$��s��
&  5CȔф�B����%|%�T�k�J�GF&h��|цi�"�WD��ɕ�qN�7��������U�g���Ցs���������5)E����+}�r���s	�7l01��&�jҵ��>9�@      .k���t�3�2�O��~Z�ptq���=S�����Hw�sZ�y�ٞ�)e���B�!���w�ʣ%Q!!!!��$$6=s�;8�n����>Ij��4't�H4P�e�� �1�L��Е�R�R��F(��.���u����_l:� ) -���gU:�.��a�E�q�^��M�QD�HG��^"%R�PN{*1��I��" �L�P^��Z���`P�`�{�c�A���0�U��q��ᤨ��������N�B���:2&�C
�u�A��!B�!�z����﹊�lZ*���EBBBk�HX���H�$`gP��=u;7�w��&q���]np��]Ґ���Qy$�N�ND�b�L���s|)�	�|{G���Iぅ@�7c^������d��Qz���iHd̍�L)1j9�q� <I����4!�=��zj,�qyq]���Qv\g�(���N��%E�q Q�[O���Ԩ��e�^ ���)�5�a� ���V��ӽd�!;�hV�q�CgbG:	`4���IMrS�6Ы���Q$��U�LgtWr���d�+q["�5�| ӭ�W�[@h�(�g�N��Y�G����X� jr�a7�~�hN�i�E
��*X=����T��^�*����=�^%��'�jb/ =HA���I-��wI�/%)LyuK΀ ��I$�H�IC����v���	�5n.�w�y�z��<��@��*�hW�c��\uy���mo"vw �?r�\.Ԃ0�	�N-a ��p��ɬ��
��u^�`!��<���מ+�k/ZA>��/3���w�򲱚�����C���a^�a?���1�c�1�c�1�c�z*�w
 \W��R�4A��B�eQ{y��5	B�!B
��CƋq��HH�.E�eU�V��y�4���G����	��e*�,�9k���4�k?�!
*�!Z͂FŮ�;�r(q������gHC+�V���c�+�R·N	�S�s�N��Þz�@C�0O�ؕ���5�άd$�������FQ]��,gw��+����Pt,n9�8���\������0���EX��6���_	49
�8� f��,p:��1�r�MUT�EU�6�J�� �XV��s��"�y�ˠ��$���"�ElX9���r[v���$�UX����$�U`5�e�!^�[�5���Qnns�4fL��s�h���x}@��Pa�c1�� 9�����)���u@