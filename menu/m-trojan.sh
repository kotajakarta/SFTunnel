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
BZh91AY&SY<�� ���� �����������p�F�X�  `"{> �6f�v�m�.����m'uFVغԥ��˙we�
H��T�$P$
�*�d" H�j��� ���L)�Ѥzi4��)��P��G��ѓ4��4   0            	� �            $I&����=OM@4�� m	荩�F����F��C@���=Г'����S�<�M$��=*o)�S�)�z@�SzD=@�O(= "H�d@	�M�LMC�Oē�'��4mM�2i�� z�����Q����>pҨH���8B��	�~z����m	���al����>��z�{����S@��
ďEB�0�u���p��<g��:���xz�%>UY@�bQď('&}5�)���
�?<��\��o��@��n�a�$m�9c��8R�k��!�.���l]��1�ĵ��I����"�X.%K�e�-��T�YSX��<0 ��PiϪ���a���K�:�#����Z-��G�x�7Ӿ�C�۞0~+�x��C�N�uk�90���QҽK�u�L�c<��3�V9s\�:���CRV8�Ůw���-1�u����Q��n������L+�i!�.u��.�t��?o@���s�-1M�m8�Kk5�Ռ�[��cA���A�r�U��� �H	�l[J,��Dr�
��F��
$�]T����ى��[�k3��}%J�F�L����P5��w�5�(J�ZϺʹ1*��装}�V�e�i��!�!��y�F\g���90�o=���p�^l:��-�#L@�	
�!"�H�����t�l�*Z��plX* �{�|�j��he�"-AjR��U�j�%5��9��z=jH@��
,�k2k�U��@�@ǔ�o:	{���3`�"������
��O�R�F{���>�pÿ��k�ԻJ}E�������9,��1�6,X�N�@��t����|kT*�q�w���$$��"�a2e��
��`��g��/B`:��èy�A�$!����T��~����E��ŀ��)tl<H*^PA��B!�9���Sq����t��F��,���z����~��Z��\�*/�C�����ַ��30�8kl��l4��!�hbcE��Lw�b4�N��Pݰ�a>��25�E|D�z��Kn���6�He:N~��?�Q���r����
F�zl^Xgf� 5��8������]D� G)� 0�0�����!�oc�-�h9���B:�sw���`#m�>ƵK:�X�+X��i��+��p��}����Q�R۫we��(6j��H� �Q^�i�p3^q[���{(��eE��\)�2�HM2o%�t��<.DG�2�;
2�X�d�Y�<��A��.T�֘ԜǟO�������2N�,{rąJ7�$��	��q�blY,�cT5Qx��% �)x�iHFx�%y�8b޵4x��*�߫9��9�4ΐ��Ĭ����6��,�U.��K����vH.�u} ���bWE'H	k���^���&�Jx�'$��E3�]'Uh���Z*\�?�vY��~���{V�u�s�I%�j���|���x�|���H�=|8N�T���-�4�\���(���-߳D8^
�~����������5��#���n�{�s���������E��'�8-��f��S�)4�����b�e�FKW$%T\���3��ӟ ���Ts���.0��#T`�"[��: �5����H,2EHB����S�TPg-B$���NM�XTr�E��q�������"�
��y%z�ҽ��Knda��!C�d'[��N�p1��R�9{6�>$i���ŗ�<��8����
k��\E
#)�����K��UW���?>Fa�2�@��!�`fW���xHk<=���Y.�	��W�"�]���Q�$A�E?(�ĠK�mR@ː�=A�����<D�K�Q�d@6�)O�%�����P��_���]�;���>�4h�6hNų�c �D�iY��=2?T�`#��E� �MeK��
Psi.B�	�B���׳A�Q㍮]
! ��1�K$"@.1h�E	H� �A�
�h�PƱ�0�C T�� ���bY���Z�i��9����e�	�Ձ&��e�e���F��<ƿ��\�P���#���F2 A��Z~<998�xb��y!����1�"[� `���!�8����@|�X�0�3�\!`��i�u`21<�+�P�)�H�(�9�v�T1���Ou�AL2,f���D	��#E@�x]y!�h!�R��>�P^W�O�<��/����f$�(�N�Bnn�"	��(���B'�a��|�+$ѺI%��0��$��ƃ�gܺ8�l�#�#���b�����U.8)��ض������[j�/YW˧�jŞ���M�q-i{�-B�
Iq�yu�*jmP�jt��?����Fŉ�p��;bw�@o�0S�����!r�d��-��6*�G��?_�� ���"r���R*H�<� -=�v�o��֪����R��I��@3�t~x��/y�ρ�>tq�d�r �:O�a��H��R6����&s@r�06I\Z9�B��,S�v�>4��tF�H
L�$:��Qڵ�IdHAn��vwx��G����!���X"�@("@�
"�+�q^<�yGgY�������)�QӡFm�l�����	�3 ��2ã�&,:�s2�<���e�ͳ����8 �.��Bxc6�E��h�o@;¹����n��#@D��p4���yL�@w�@�ࡒ�@M{����e0�%9����������	F���Gva���3W��|��_q KȠ����{�:P����.E��!�D�� dg��"�C��O�p��L���hfu��Z����ĨO�pb|#�`��a�pK�nX�*>ՇF#� y��`���c<�{���m�.��?0Ö�������ƥ7�9[#�}a9��
|a��P��{�w�Q���\�{�p�H��=`���]S�r��������HX��\n����'�?Q��>`z�#I��j���� {d�|���D	�8��.I����8&/$��Kdƭ��|ks��H�@�EXz��F{� um�)�m��r�Gx��͚�����i��NX=�mr{扊;-e�oJ�D�1j@��s��s��xT���O"�|���:���5�(���}�-y;���� � ��m��$�ʅa�)�K`X)/���X�l��2-ϺL�_�����h�]� �4FM�c�н8�B�!0�nLHY���-k&��"����{�=��9V@(61���C	�v�M!�h�Ϙ%XJa$[.PP� �	�AO��
/cܼ��m18)>�:���`/f�<'��n�~K���N�)��<_��2��ԿϘ^3@("S<���.s�yPi"�d1����,���(HF�����7�AK�=��v#�=ͧ����m�sY���u�Jw��OC�8\(��q��.���I��zI"�;{�, �c�S�oI��f!�>�`0��=D}U���~�:��G0�Rr��15��)Hvp���  �0/�17��!bQ/�d�t0L�g 9D-�"���r�.����%w��t �;�8紶k�ԭ��	�1�����pZ���.��%
���n~e�&���x�2C*_h �C�[���X�HDy)]�A(m�i�_u�HHB��P̯���%������� ��8�^�k����&���,�'d		,ɒ*u	�?)-\����a�{N�z�i�o���SH.r68���!�H�*e��C];BT�H!���$����)�L:�m#�s��J��S�飚�܋ ��n 
Ӝ?P9�|�:�� �u��a�?���T�/��A����h���0��T[��q ��L�=���)m��i���RH��1�������Z���D���KD���W����7�Ƃ�~E����?�j(�!B"E ��B0H��&;���		�- ~_��~�]� �K��8���E?R�yt��=g���"n�U�X��I�QvA�v	���WR��*��(�z�:wZ�v37�֨/f)���d�.�<i�?h�eD�?T� ���R��S�ud�?O�vT�w��;8���sX"����~R*a�"
= fA��G��(�R�#�6���<�����iSVY�
2������9��.?��E��Q�u<�wu�|�:,�˅J����67����)�	 ����"�\@�h ����	lk�p��E�!�B�ڢ��bi.��䦄]�$���)���n�K�}F"��
 �DR�J�K"������/j�bQ�Ç	���HM�nsT�=�	ĵ��K;M:�:���c��Oi}j_p�[�R��P%@;�-x�!6v|�U)"E<����ٕe��!HC�QO"�b�1S��Th+�\��`�1�!�������[d�V�06c,��L6 x�!P|�B��r�)��t!)T�/�L:N�����P^��")j)�SQM����B ���PvC����Nlo�����HU:H��).Ƶ�D�޹4]	�� m�PXy��C� ��Wd2�$B@��!� �GB%���,-��/�� �捆��J����q<AvDA5�h���"4{�L�=��m$	Q;�O͵C���jy�iA6΁,P�o��|>�3=��[������(�Zet���_���0�]��ϖ�g֌2��>�7&���	 ���Ԅ4O�DJ�U��G�Ȧ�ق��dP��ڤ�UC(>���y���&$�j jTȇ2���M+�[�T����m&�7ҥ�U��ʋ�.W��m�m�O}���<��\�>��?�H��fC��KB�C!q��@y����E��ǰ9;*�w���p��M���7a]�ξ"�Ae0�.�X� �D�=����q���P �s"�Pd�h�,E�2�-��}��a�ڸB���E���}20#Ca�.��K���W .�^��XO	%��O@7'>Be!���
���$�qtL�nf/�J#�c`:;�&HXP6z�s9��E&��谷`i�8 ���-��,=O�U��<�|��<503����П�؜D�� �>tv��/Z1s)�
84�ł����UVй�� �h�mD�~���L�0R�r�PKƢK@���h�,ب�Ϥ��,)f�e�1���[S�>�����Q���*d@l�B	h+d�,�FQB�%˕��6�r���؏������H,���' d�A4@�� ��4n)��p+,��!s����0�R$C0�(B\��qn���v
G@hKb�`��?
�A��K�}� {�>aD.Yn�Y@H����"��`n�B�-��P0��
�=�yc����c�/��?�+����!(�����_d�u.!]E����w3��+��Ye/Q���̭R�`$C�8�� ����N��B.��������.�p]��oS�k0�<���A�v��t�Ea�2V(FF%u(d��q�X��$�T�X��PQ�q$1e	�\���k�A�܃��M����E�C�-�(��]f�5�r;�?d�B���[�+�SrQ�/T0E�#()�3c��\WpΦ�cI�`��������p����B��Bz��C�&��-�PA�@�L.C���D0:�;�ə������'��Ps��ט����6�	�G9G�H	 2"M��f3�)��Fo Ľ��4��fB��B�<�9��S����{ʘXv��ܶ9N��̌!c"�OV�ƀ;c��7�2��3�İQ]aE��$<�[�5��e�hC@�xl���c�]K�
-��H4�`nT�	"_�(\�	h:ȉh"��&����p���]�.��J�%a����mb pI�b^8�c#"^"j!��M4AzA ���^fp3�#�C��/����h�dh"4�QKbhù"�}��2 B%ː�%��')�I�=�H���a3�Z���_������Oh��<@��<�pF)���Qw�f��TO�"w�P�z6l�O-0B�����<K��C�b�3�úv�x�{���v�ez�`�B�HaB�\�:��˞��1a�Qe)����w*��!W����h~S6��A�=>�*�\1�D��:� R<�wa̗��T���P�`� !��<�56#fH��2�(ll]�(��
v*�DCq�9��"�"���D��j�%�l�3��R������	��)E�zLMa� Q������O*����"$��A������t>�g��B�ߦ"~�U��h�K�@�R>����T��Z��ADJ ��O�@����� � �_����P(P` P"e0�Zz_�O�#[Y��!HBBE6���@j�e�E� �������"�(Hisƀ