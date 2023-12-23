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
BZh91AY&SY.N� ��������������0�F� �  `��}�K�N��}��v�]�<n�R� �����m��IU�={�R�-�BTW��W�{4R-PeUP��ВI��&&Lʧ�*{T�O2e=�x�mM��i6�	��d  Ȉ�*~��dQ��=@�P��h4�   h ���4�Dh    @   �  MI���ꘙ�i��P�D�=F��2a14�2�)��ddd����S�L�OQ⧔�A�茙4�ɔ�L#�O@�0�DdM &$�S�{T�	�=M�4�(=M= i�dq^�O�K��:]jD�PHx�H����Ȃ18hh���%�%�y��i*��C����ı5bGF/�+4ԏl��g�&��L*�Z.U3I��L���+���Ј�2sG�Mu������1I�G^_<I �Y:��8�����Y�&�l8�i�P;7��ի`�҇�~ �2$��7�$4 IT�DÓ	�w!�A��EC�z18�I����C=���bn�ߧ$�!a��}l�=V���j��]ɴ��l��Z�jz����~��E������v�x�h7�BC�c�&!7�K��-�RV�[_��T�p��m�W�Bp4#D�;c�l��Zr$�@2���K���.�Z�&���`m�CŖ�:<Q�����Iˤ��}J�XH-]��X����"w���~{}D��w`h'/�K|�l�$��0��U���\F$! "_0�A��{m�B��%�#*���v�lC���p��O)OaÃ����۝�^1OC�2�SGC*Ztˢ]ش��5")F�7%�('f#,"���-�/cQ+ʺE�. X��+���rY��<ሑ�D�qvy3K�	^�I��D��	Й����6��7+�%SD�$I=45%�,��8	ele�VRd)%�ΐQe(����E�rXT���R$N���ª{D� ���pj9i��v��(�O|kM���歞�|~v��F/(��:�O����w�ƙD�ki��UR��g�O���,O:c|/�;��Vv�����H�l z&}�8�6�Z����8Þ�7�\Q��#<u����Iʺ�ޟ�2m���C*���	��Uxe�.�`�*�!9������C��=���fC�������4Ƈ�� FD�PxR��>�Z�CPn&�վ�{��ѿͨl��Gz�G���ޅø�Y���C�P`�&A�>�m�� nՓ�p�Ohk�'")$L�YQ��=���{�'J`���/r"k��?7(276![�4��`* "�Ω��M �ncO\�q���#Qq���Bs3��B��P���3pr����=ښ����bȑ_;)m���Hc�K���u) $����ߥ@���JP
��%+$_�p�"M]�V#8�ˣM05[����X��ǲ-ޞ���R�K��c�$Ђ��I���G/W	���2���>�`��F���0�~���9�X���m+$�zLj��j�g�@�HZ�H2���[gT��I{,�UTE*���EW2as��h
�	k�k�ٿ:}��A�!s0c��)��HBy�����]TS?�c\�ёV��I� wO5��*? ���(��|����OG���<��A)n�A�෍b�	�P�V�7�7U=����۳��xԠO�	�Ju��B|������/�~+i�9�]ڗ<����y�%	�/j:I�ؔ�Ғ80���)�ƛBA�F��o�X�2��&�c������04ae &�Oio�
��C��C���3S�x�`AK�����}���]�u���_Qqi�B���uz$�Y��l�*f�5	�b5�8�Ns��na�����Ti�N��K ���ƾ��`�;���6��8�#P���ߞ��NcW�	Q������[l d%3�R U*�Q59��RF�	�o�[e�eG'I"c`z�������d2R��-�ez��LD�d�A�Wԡ}rI�9ܺ�@��?��(g�ƪ�B�mJbU*�]��ђ,�P1'��#ҟ�^X*��I}�6~�D��OZ��.>2�Bg�M���l(ĪD�3(� }�]~��6��e�4j���C�����l��8��V����:&$�H!�q��`M��p�V� ���W�+���g��@�w�S�N��E�<���Q$�ol�Nä��8
%���
pײ���I�o ;*��#;a՛ƽ:GK(�2�7�<311ބe��!��L'��]R�TSתy`3ڂ�ꏏQ��$��̊����P�BmB���*;������ZPFԯ(�n���m�B��cB*���:�����Tc�v7�K����횃���`ͻ,]mL�zlr��hO�gȝ3���1#���	�m��#�3��9��߆�Ï������@�*
�������� ����@>yQ0�����F�M��<�;����V2v~��5��\����$z��☏<�>�;]!Qц�o��I�wO�%��"
��,.!Vq���NX�%z�Ȅ?(8��H�>��b���I!S��|?����O�r��j�`k����V@s˶�p�YonT�7�<f���[��z�-��.N�5�pX���ˌ, m��\ǌ���8��(78L��~��a�i�&�0}��^�Q+\����)JiK���6O�Ɉךh��w�?�� 딒F�٫��)J].�Ý_Op���a&t۲z&�Ņ\���:�"��]�Lx���F嶪LK\\h���z�f�,�D�t�N
_�ѥ���$��$񍕗sn+�l�H��'�#���z4#B;��;Mz�Q����M?NĪ�� Ѣ{ۓi���]�T�2�M^K�[�2�/�)�%ߧ����m"]�X1}�<nt� ��m�J�Xi7����Ғ����N6�<��R��1mSܒS�� �]t��Y��%�����M�dړ$%��l�j��Hk��'���ԭ3bS7�|�YΕ��V���̲9���5�\�P��S����b�+��z2��B�(P�-�%�� 95��J�Nh.q;�O��Bâ�In�Ba4�&�0�DhD���ZG�����/�xJ�HB	$C�MG����V�ȿ���|������4��rr5/�}4-� �>�,& _B���T�Їa���x�ޖ�<qB��c�U��a�����O�_�2V��**�`�sPB��>�#� |��|�~O{�SO�?3�ҊJ��?9C��R�s-X�y��S�|ɵ�W�����#N��l:B��� {(<�q��
�h;|��RHu �!>8PD�|;W�L�LC}���Is�=5GQhA�r�I �OaO@`�;�9(	��p>��N��L�
?� �Ia�0^����C /l7��'�`?X��Q��P�:���vm�8D�Z^��xb&��nC�Z�)x��i���T�c�QӦ��Lp��;�����3��� _�@͗��#�Qb���(�@ɤ�0#�H��(7��n ͉���F�pL�7"���)h�Jo�V�-Z,��P�E���/gr�,���
���%Ң���eŵ�A���0*��R�0A>��j������ ��j��ī�o��攡+�����<�6Yc)8跪V�J�$F��/��I	A�N��o@��ԠCß��S@1A��/��#���X:�`-��� M��`Z�~�LP+�jrN B޽�oxHD$A�p%0�џ�:m���։?L���'"M:N�7"k���bD�s�:	��@ġh�mѴW�3G��D�� �S@o���,��Q�DH0`!ܐh�<JSZ��z��RFp,���������z
��q�j��*��^<�����1;,�J%xؔfF��1N�ƂV�>J�GP��iQ �'D2R �!$6t^�cm�R��ģ膇iA-m}Q9T��"��r<w��M���H�fP������6^�ԴĬ��X���]�y�n�W��D�l�{F�,*�c�Hi�5&���1NR�	��5�/��g��Z����e�'s�KD��N�ĴBTd�P5��a q���� ��k0���I��_�W�T`\�A>��sT�ӈ5^�g0�r�@���+z�9`��9x4�p9k��HH�������~?g��)-������(���l�0h�0<*7��5�ڵ��f�Q7�<*��L�$>�\�.D{�j�:L.��8�4�I'v,�c)8a[���Hj8��uh
��A��
$Q��A�`�[\V	+)F)A�(��Wd,�����i�RA�K��1mX!O�d��Ìs�(�m�ިf^��0����"M-��U�0F�2���p7�D*?��mp�����bT�0n�Bق����PѨXP�rW�~��g�k��ؚ�A�5�7I%� ��@��!!mFh�R�v��ė��H"{��xQ:��;��w���5D�����C��LS��o&
�Znd�<"R��{V��}R���DJ�;�`j2W���̅ɼ���ܨ��2�t@T��S(@�H���,*:��YA{%�:��F'�y5�C�M)$P �$��r%���5�>��Bmԕ'O
�(�����B��#'�a�4D-5(���+&�V��&b^��ɜq�8ZX�{��+���w��~ e�e��%��������	+�JH�B1B�G�3G_Δ(�08��aE��ޒ1 �:Pv�,�[���K�!GP[BCt�����ʙ>ш��FZd8%ڐ�]PL ��tQB���`�2�z�!p����.�g��<]y�@1�uB�w4���R�eQ��X'I�f��Si�QP�`en�*�P]��@M��q�ͩ[Z��mU ����.D�x�z6	�T4����w�|/��>��4�>���r�qaQ��a��Z�b���y���r <ez���b���p�9�@*�%�!�Ě���7�g/����z��\uCU�� ~��V:_igzP-L�
�jSrH9���$���K�J� �[�{����9�?{�������S���>����F��I
�%�W��{�χ��~@�����6�u�'�����&_݊yb��������J*�|��2a�d;5��QE���ޒH��_Hd	��TPH�܋�oܕ:�����_�����G���_�~� ?��~�C�~�B0?���Ac@D� �" �o���w$S�	����