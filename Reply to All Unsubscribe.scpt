FasdUAS 1.101.10   ��   ��    k             l     ��  ��       Reply to All, Unsubscribe     � 	 	 4   R e p l y   t o   A l l ,   U n s u b s c r i b e   
  
 l     ��������  ��  ��        l     ��  ��    "  get number of sent messages     �   8   g e t   n u m b e r   o f   s e n t   m e s s a g e s      l     ��  ��    #  first, specify where to look     �   :   f i r s t ,   s p e c i f y   w h e r e   t o   l o o k      l     ��  ��    #  get path to home as an alias     �   :   g e t   p a t h   t o   h o m e   a s   a n   a l i a s      l     ����  r         e          I    �� !��
�� .earsffdralis        afdr ! m     ��
�� afdrcusr��    o      ���� 0 home  ��  ��     " # " l    $���� $ r     % & % b     ' ( ' n     ) * ) 1   	 ��
�� 
psxp * o    	���� 0 home   ( m     + + � , , b L i b r a r y / S c r i p t s / R e p l y   t o   A l l   U n s u b s c r i b e   D a t a . t x t & o      ���� 0 fn  ��  ��   #  - . - l     ��������  ��  ��   .  / 0 / l     �� 1 2��   1 * $ we need that file to actually exist    2 � 3 3 H   w e   n e e d   t h a t   f i l e   t o   a c t u a l l y   e x i s t 0  4 5 4 l     �� 6 7��   6 H B so we'll define a function to test existense else create the file    7 � 8 8 �   s o   w e ' l l   d e f i n e   a   f u n c t i o n   t o   t e s t   e x i s t e n s e   e l s e   c r e a t e   t h e   f i l e 5  9 : 9 l     �� ; <��   ; S M I'll assume paths will always be POSIX style rather than old Macintosh style    < � = = �   I ' l l   a s s u m e   p a t h s   w i l l   a l w a y s   b e   P O S I X   s t y l e   r a t h e r   t h a n   o l d   M a c i n t o s h   s t y l e :  > ? > i      @ A @ I      �� B���� 0 
pathexists 
pathExists B  C�� C o      ���� 0 s  ��  ��   A Q     % D E F D k     G G  H I H c    	 J K J 4    �� L
�� 
psxf L o    ���� 0 s   K m    ��
�� 
alis I  M�� M L   
  N N m   
 ��
�� boovtrue��   E R      ������
�� .ascrerr ****      � ****��  ��   F k    % O O  P Q P l   �� R S��   R 4 . Surely there's a native way to create a file!    S � T T \   S u r e l y   t h e r e ' s   a   n a t i v e   w a y   t o   c r e a t e   a   f i l e ! Q  U V U I   �� W��
�� .sysoexecTEXT���     TEXT W b     X Y X m     Z Z � [ [  t o u c h   Y o    ���� 0 s  ��   V  \ ] \ l   �� ^ _��   ^ , & Read doesn't like to read empty files    _ � ` ` L   R e a d   d o e s n ' t   l i k e   t o   r e a d   e m p t y   f i l e s ]  a�� a I   %�� b c
�� .rdwrwritnull���     **** b m    ����   c �� d e
�� 
as   d m    ��
�� 
TEXT e �� f��
�� 
refn f o     !���� 0 s  ��  ��   ?  g h g l     ��������  ��  ��   h  i j i l     �� k l��   k   pathExists of fn    l � m m "   p a t h E x i s t s   o f   f n j  n o n l    p���� p I    �� q���� 0 
pathexists 
pathExists q  r�� r o    ���� 0 fn  ��  ��  ��  ��   o  s t s l     ��������  ��  ��   t  u v u l     ��������  ��  ��   v  w x w l     �� y z��   y T N the number of sent messages is stored in the file as a human-readable string     z � { { �   t h e   n u m b e r   o f   s e n t   m e s s a g e s   i s   s t o r e d   i n   t h e   f i l e   a s   a   h u m a n - r e a d a b l e   s t r i n g   x  | } | l     ~���� ~ r       �  I   �� � �
�� .rdwrread****        **** � o    ���� 0 fn   � �� ���
�� 
as   � m    ��
�� 
TEXT��   � o      ���� 	0 iters  ��  ��   }  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � R L get message body, sender's name, and sender's address from a selected email    � � � � �   g e t   m e s s a g e   b o d y ,   s e n d e r ' s   n a m e ,   a n d   s e n d e r ' s   a d d r e s s   f r o m   a   s e l e c t e d   e m a i l �  � � � l     �� � ���   � D > for now I'll only do this to the sender and not everyone else    � � � � |   f o r   n o w   I ' l l   o n l y   d o   t h i s   t o   t h e   s e n d e r   a n d   n o t   e v e r y o n e   e l s e �  � � � l  ! m ����� � O   ! m � � � k   % l � �  � � � r   % * � � � 1   % (��
�� 
slct � o      ���� $0 selectedmessages selectedMessages �  ��� � Z   + l � ����� � >  + / � � � o   + ,���� $0 selectedmessages selectedMessages � J   , .����   � k   2 h � �  � � � r   2 8 � � � n   2 6 � � � 4   3 6�� �
�� 
cobj � m   4 5����  � o   2 3���� $0 selectedmessages selectedMessages � o      ���� 0 
themessage 
theMessage �  � � � l  9 9�� � ���   � $  Extract the message content.     � � � � <   E x t r a c t   t h e   m e s s a g e   c o n t e n t .   �  � � � r   9 B � � � n   9 > � � � 1   : >��
�� 
ctnt � o   9 :���� 0 
themessage 
theMessage � o      ���� 0 msgbody msgBody �  � � � r   C P � � � I  C L�� ���
�� .emaleafnnull���     ctxt � n   C H � � � 1   D H��
�� 
sndr � o   C D���� 0 
themessage 
theMessage��   � o      ���� 0 
sendername 
senderName �  � � � r   Q ^ � � � I  Q Z�� ���
�� .emaleauanull���     ctxt � n   Q V � � � 1   R V��
�� 
sndr � o   Q R���� 0 
themessage 
theMessage��   � o      ���� 0 senderaddress senderAddress �  ��� � r   _ h � � � n   _ d � � � 1   ` d��
�� 
subj � o   _ `���� 0 
themessage 
theMessage � o      ���� 0 subj  ��  ��  ��  ��   � m   ! " � ��                                                                                  emal  alis    (  Macintosh HD               �aIBD ����Mail.app                                                       �����aI        ����  
 cu             Applications  /:System:Applications:Mail.app/     M a i l . a p p    M a c i n t o s h   H D  System/Applications/Mail.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � . ( coerce that string into a list of words    � � � � P   c o e r c e   t h a t   s t r i n g   i n t o   a   l i s t   o f   w o r d s �  � � � l  n z ����� � r   n z � � � e   n v � � n   n v � � � 2  q u��
�� 
cwor � o   n q���� 0 msgbody msgBody � o      ���� 0 wordlist wordList��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �������  ��  �   �  � � � l     �~ � ��~   � ' ! cut a list into chunkSize chunks    � � � � B   c u t   a   l i s t   i n t o   c h u n k S i z e   c h u n k s �  � � � p     � � �}�|�} 0 	chunksize 	chunkSize�|   �  � � � l  { � ��{�z � r   { � � � � m   { ~�y�y  � o      �x�x 0 	chunksize 	chunkSize�{  �z   �  � � � i     � � � I      �w ��v�w 
0 chunks   �  ��u � o      �t�t 	0 input  �u  �v   � k     � � �  � � � h     �s ��s 0 s   � j     �r ��r 0 l   � o     �q�q 	0 input   �  � � � r     � � � I   �p ��o
�p .corecnte****       **** � n     � � � o   	 �n�n 0 l   � o    	�m�m 0 s  �o   � o      �l�l 0 i   �  � � � r     � � � J    �k�k   � o      �j�j 
0 output   �  � � � l   �i �i    = 7 iterate over the input list, chunkSize steps at a time    � n   i t e r a t e   o v e r   t h e   i n p u t   l i s t ,   c h u n k S i z e   s t e p s   a t   a   t i m e �  l   �h�h   1 + display dialog "chunkSize is " & chunkSize    � V   d i s p l a y   d i a l o g   " c h u n k S i z e   i s   "   &   c h u n k S i z e 	 V    �

 k    �  l   �g�g     iterate chunkSize times    � 0   i t e r a t e   c h u n k S i z e   t i m e s  r    $ ]    " o     �f�f 0 	chunksize 	chunkSize m     !�e�e�� o      �d�d 0 j    l  % %�c�c   "  collect each new chunk here    � 8   c o l l e c t   e a c h   n e w   c h u n k   h e r e  r   % )  J   % '�b�b    o      �a�a 	0 j_out   !"! V   * �#$# k   2 �%% &'& r   2 7()( [   2 5*+* o   2 3�`�` 0 i  + o   3 4�_�_ 0 j  ) o      �^�^ &0 currentitemnumber currentItemNumber' ,-, l  8 8�]./�]  . ' ! display dialog currentItemNumber   / �00 B   d i s p l a y   d i a l o g   c u r r e n t I t e m N u m b e r- 121 l  8 8�\34�\  3 9 3 guard against trying to get the 0th item of l of s   4 �55 f   g u a r d   a g a i n s t   t r y i n g   t o   g e t   t h e   0 t h   i t e m   o f   l   o f   s2 676 Z   8 z89�[:8 ?   8 ;;<; o   8 9�Z�Z &0 currentitemnumber currentItemNumber< m   9 :�Y�Y  9 k   > I== >?> r   > G@A@ n   > DBCB 4   A D�XD
�X 
cobjD o   B C�W�W &0 currentitemnumber currentItemNumberC n   > AEFE o   ? A�V�V 0 l  F o   > ?�U�U 0 s  A n      GHG  ;   E FH o   D E�T�T 	0 j_out  ? I�SI l  H H�RJK�R  J , & we've come to the remainder of l of s   K �LL L   w e ' v e   c o m e   t o   t h e   r e m a i n d e r   o f   l   o f   s�S  �[  : k   L zMM NON r   L UPQP I  L S�QR�P
�Q .corecnte****       ****R n   L OSTS o   M O�O�O 0 l  T o   L M�N�N 0 s  �P  Q o      �M�M 0 k  O UVU l  V V�LWX�L  W . ( get the size of the remainder of l of s   X �YY P   g e t   t h e   s i z e   o f   t h e   r e m a i n d e r   o f   l   o f   sV Z[Z r   V [\]\ `   V Y^_^ o   V W�K�K 0 k  _ o   W X�J�J 0 	chunksize 	chunkSize] o      �I�I 0 k  [ `a` l  \ \�Hbc�H  b ; 5 iterate over the remainder, collecting it into j_out   c �dd j   i t e r a t e   o v e r   t h e   r e m a i n d e r ,   c o l l e c t i n g   i t   i n t o   j _ o u ta efe V   \ xghg k   d sii jkj r   d mlml n   d jnon 4   g j�Gp
�G 
cobjp o   h i�F�F 0 k  o n   d gqrq o   e g�E�E 0 l  r o   d e�D�D 0 s  m n      sts  ;   k lt o   j k�C�C 	0 j_out  k u�Bu r   n svwv \   n qxyx o   n o�A�A 0 k  y m   o p�@�@ w o      �?�? 0 k  �B  h ?   ` cz{z o   ` a�>�> 0 k  { m   a b�=�=  f |�<|  S   y z�<  7 }~} r   { �� [   { ~��� o   { |�;�; 0 j  � m   | }�:�: � o      �9�9 0 j  ~ ��� l  � ��8�7�6�8  �7  �6  � ��5� l   � ��4���4  � q k			try				set end of j_out to item currentItemNumber of l of s			on error				exit repeat			end try
			   � ��� �  	 	 	 t r y  	 	 	 	 s e t   e n d   o f   j _ o u t   t o   i t e m   c u r r e n t I t e m N u m b e r   o f   l   o f   s  	 	 	 o n   e r r o r  	 	 	 	 e x i t   r e p e a t  	 	 	 e n d   t r y 
 	 	 	�5  $ A   . 1��� o   . /�3�3 0 j  � m   / 0�2�2  " ��� r   � ���� o   � ��1�1 	0 j_out  � n      ���  :   � �� o   � ��0�0 
0 output  � ��/� r   � ���� \   � ���� o   � ��.�. 0 i  � o   � ��-�- 0 	chunksize 	chunkSize� o      �,�, 0 i  �/   @    ��� o    �+�+ 0 i  � m    �*�* 	 ��� n   � ���� o   � ��)�) 0 l  � o   � ��(�( 0 s  � ��'� L   � ��� o   � ��&�& 
0 output  �'   � ��� l     �%�$�#�%  �$  �#  � ��� l     �"�!� �"  �!  �   � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  � 2 , define a routine to shuffle items of a list   � ��� X   d e f i n e   a   r o u t i n e   t o   s h u f f l e   i t e m s   o f   a   l i s t� ��� i    ��� I      ���� 0 shuffle  � ��� o      �� 	0 input  �  �  � k     ]�� ��� h     ��� 0 s  � j     ��� 0 l  � o     �� 	0 input  � ��� r    ��� I   ���
� .corecnte****       ****� n    ��� o   	 �� 0 l  � o    	�� 0 s  �  � o      �� 0 i  � ��� V    X��� k    S�� ��� r    %��� I   #���
� .sysorandnmbr    ��� nmbr�  � �
��
�
 
from� m    �	�	 � ���
� 
to  � o    �� 0 i  �  � o      �� 0 j  � ��� r   & M��� J   & 4�� ��� n   & ,��� 4   ) ,��
� 
cobj� o   * +�� 0 j  � n   & )��� o   ' )�� 0 l  � o   & '�� 0 s  � �� � n   , 2��� 4   / 2���
�� 
cobj� o   0 1���� 0 i  � n   , /��� o   - /���� 0 l  � o   , -���� 0 s  �   � J      �� ��� n      ��� 4   < ?���
�� 
cobj� o   = >���� 0 i  � n   9 <��� o   : <���� 0 l  � o   9 :���� 0 s  � ���� n      ��� 4   H K���
�� 
cobj� o   I J���� 0 j  � n   E H��� o   F H���� 0 l  � o   E F���� 0 s  ��  � ���� r   N S��� \   N Q��� o   N O���� 0 i  � m   O P���� � o      ���� 0 i  ��  � @    ��� o    ���� 0 i  � m    ���� � ���� n   Y ]��� o   Z \���� 0 l  � o   Y Z���� 0 s  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � O I iterate howevever many times this script's data says to email the sender   � ��� �   i t e r a t e   h o w e v e v e r   m a n y   t i m e s   t h i s   s c r i p t ' s   d a t a   s a y s   t o   e m a i l   t h e   s e n d e r� � � l  �c���� U   �c k   �^  l  � ���������  ��  ��    r   � �	
	 J   � �����  
 o      ���� 0 newmsg newMsg  V   � � k   � �  r   � � I   � ������� 
0 chunks   �� o   � ����� 0 wordlist wordList��  ��   o      ���� 0 cks    r   � � I   � ������� 0 shuffle   �� o   � ����� 0 cks  ��  ��   o      ���� 0 shflcks shflCks  r   � � m   � �   �!!  
 
 n      "#"  ;   � �# o   � ����� 0 shflcks shflCks $%$ r   � �&'& o   � ����� 0 shflcks shflCks' n      ()(  ;   � �) o   � ����� 0 newmsg newMsg% *��* r   � �+,+ \   � �-.- o   � ����� 0 	chunksize 	chunkSize. m   � ����� , o      ���� 0 	chunksize 	chunkSize��   @   � �/0/ o   � ����� 0 	chunksize 	chunkSize0 m   � �����  121 l  � ���������  ��  ��  2 343 l  � ���56��  5 , & prepend "unsubscribe" to message body   6 �77 L   p r e p e n d   " u n s u b s c r i b e "   t o   m e s s a g e   b o d y4 898 r   � �:;: m   � �<< �==  u n s u b s c r i b e 
 
; n      >?>  :   � �? o   � ����� 0 newmsg newMsg9 @A@ l  � ���������  ��  ��  A BCB r   � �DED m   � �FF �GG   E n     HIH 1   � ���
�� 
txdlI 1   � ���
�� 
ascrC JKJ r   � �LML c   � �NON o   � ����� 0 newmsg newMsgO m   � ���
�� 
TEXTM o      ���� 0 newmsg newMsgK PQP r   � RSR m   � �TT �UU  S n     VWV 1   � ���
�� 
txdlW 1   � ���
�� 
ascrQ XYX l ��������  ��  ��  Y Z[Z l ��\]��  \ g a Set the new message content to be the scrambled message content! Poison their information space!   ] �^^ �   S e t   t h e   n e w   m e s s a g e   c o n t e n t   t o   b e   t h e   s c r a m b l e d   m e s s a g e   c o n t e n t !   P o i s o n   t h e i r   i n f o r m a t i o n   s p a c e ![ _`_ l ��ab��  a W Q https://apple.stackexchange.com/questions/125822/applescript-automate-mail-tasks   b �cc �   h t t p s : / / a p p l e . s t a c k e x c h a n g e . c o m / q u e s t i o n s / 1 2 5 8 2 2 / a p p l e s c r i p t - a u t o m a t e - m a i l - t a s k s` ded l ��fg��  f ? 9 http://stackoverflow.com/questions/37005663/ddg#37006000   g �hh r   h t t p : / / s t a c k o v e r f l o w . c o m / q u e s t i o n s / 3 7 0 0 5 6 6 3 / d d g # 3 7 0 0 6 0 0 0e iji O  \klk k  [mm non l ��pq��  p < 6	reply theMessage with opening window and reply to all   q �rr l 	 r e p l y   t h e M e s s a g e   w i t h   o p e n i n g   w i n d o w   a n d   r e p l y   t o   a l lo sts r  -uvu I )����w
�� .corecrel****      � null��  w ��xy
�� 
koclx m  	��
�� 
bckey ��z��
�� 
prdtz K  #{{ ��|}
�� 
subj| o  ���� 0 subj  } ��~
�� 
ctnt~ o  ���� 0 newmsg newMsg �����
�� 
pvis� m  ��
�� boovtrue��  ��  v o      ���� 0 
newmessage 
newMessaget ���� O  .[��� k  4Z�� ��� l 44������  � * $ set content of theMessage to newMsg   � ��� H   s e t   c o n t e n t   o f   t h e M e s s a g e   t o   n e w M s g� ��� I 4T�����
�� .corecrel****      � null��  � ����
�� 
kocl� m  8;��
�� 
trcp� �����
�� 
prdt� K  >N�� ����
�� 
radd� o  AD���� 0 senderaddress senderAddress� �����
�� 
pnam� o  GJ���� 0 
sendername 
senderName��  ��  � ���� I UZ������
�� .emsgsendnull���     bcke��  ��  ��  � o  .1���� 0 
newmessage 
newMessage��  l m  ���                                                                                  emal  alis    (  Macintosh HD               �aIBD ����Mail.app                                                       �����aI        ����  
 cu             Applications  /:System:Applications:Mail.app/     M a i l . a p p    M a c i n t o s h   H D  System/Applications/Mail.app  / ��  j ���� l ]]��������  ��  ��  ��   o   � ����� 	0 iters  ��  ��    ��� l     ��������  ��  ��  � ��� l     ������  �   iterate more next time   � ��� .   i t e r a t e   m o r e   n e x t   t i m e� ��� l ds������ I ds����
�� .rdwrwritnull���     ****� [  dg��� o  de���� 	0 iters  � m  ef���� � ����
�� 
refn� o  jk���� 0 fn  � ���~
� 
as  � m  lm�}
�} 
TEXT�~  ��  ��  � ��� l     �|�{�z�|  �{  �z  � ��y� l     �x�w�v�x  �w  �v  �y       �u������u  � �t�s�r�q�t 0 
pathexists 
pathExists�s 
0 chunks  �r 0 shuffle  
�q .aevtoappnull  �   � ****� �p A�o�n���m�p 0 
pathexists 
pathExists�o �l��l �  �k�k 0 s  �n  � �j�j 0 s  � �i�h�g�f Z�e�d�c�b�a�`
�i 
psxf
�h 
alis�g  �f  
�e .sysoexecTEXT���     TEXT
�d 
as  
�c 
TEXT
�b 
refn�a 
�` .rdwrwritnull���     ****�m & *�/�&OeW X  �%j Oj���� 
� �_ ��^�]���\�_ 
0 chunks  �^ �[��[ �  �Z�Z 	0 input  �]  � �Y�X�W�V�U�T�S�R�Y 	0 input  �X 0 s  �W 0 i  �V 
0 output  �U 0 j  �T 	0 j_out  �S &0 currentitemnumber currentItemNumber�R 0 k  � �Q ���P�O�N�M�Q 0 s  � �L��K�J���I
�L .ascrinit****      � ****� k     ��  ��H�H  �K  �J  � �G�G 0 l  � �F�F 0 l  �I b   ��P 0 l  
�O .corecnte****       ****�N 0 	chunksize 	chunkSize
�M 
cobj�\ ���K S�O��,j E�OjvE�O h�l�i E�OjvE�O \h�j��E�O�j ��,�/�6FOPY 0��,j E�O��#E�O h�j��,�/�6FO�kE�[OY��OO�kE�OP[OY��O��5FO��E�[OY��O��,EO�� �E��D�C���B�E 0 shuffle  �D �A��A �  �@�@ 	0 input  �C  � �?�>�=�<�? 	0 input  �> 0 s  �= 0 i  �< 0 j  � 
�;���:�9�8�7�6�5�4�; 0 s  � �3��2�1���0
�3 .ascrinit****      � ****� k     �� ��/�/  �2  �1  � �.�. 0 l  � �-�- 0 l  �0 b   ��: 0 l  
�9 .corecnte****       ****
�8 
from
�7 
to  �6 
�5 .sysorandnmbr    ��� nmbr
�4 
cobj�B ^��K S�O��,j E�O Eh�l*�k�� E�O��,�/��,�/lvE[�k/��,�/FZ[�l/��,�/FZO�kE�[OY��O��,E� �,��+�*���)
�, .aevtoappnull  �   � ****� k    s��  ��  "��  n��  |��  ���  ���  ��� ��� ��(�(  �+  �*  �  � 5�'�&�%�$ +�#�"�!� �� ���������������������
�	� <F��T������ ��������������
�' afdrcusr
�& .earsffdralis        afdr�% 0 home  
�$ 
psxp�# 0 fn  �" 0 
pathexists 
pathExists
�! 
as  
�  
TEXT
� .rdwrread****        ****� 	0 iters  
� 
slct� $0 selectedmessages selectedMessages
� 
cobj� 0 
themessage 
theMessage
� 
ctnt� 0 msgbody msgBody
� 
sndr
� .emaleafnnull���     ctxt� 0 
sendername 
senderName
� .emaleauanull���     ctxt� 0 senderaddress senderAddress
� 
subj� 0 subj  
� 
cwor� 0 wordlist wordList� � 0 	chunksize 	chunkSize� 0 newmsg newMsg� 
0 chunks  �
 0 cks  �	 0 shuffle  � 0 shflcks shflCks
� 
ascr
� 
txdl
� 
kocl
� 
bcke
� 
prdt
� 
pvis� 
�  .corecrel****      � null�� 0 
newmessage 
newMessage
�� 
trcp
�� 
radd
�� 
pnam
�� .emsgsendnull���     bcke
�� 
refn
�� .rdwrwritnull���     ****�)t�j E�O��,�%E�O*�k+ O���l 	E�O� I*�,E�O�jv ;��k/E�O�a ,E` O�a ,j E` O�a ,j E` O�a ,E` Y hUO_ a -EE` Oa E` O ��khjvE` O Ch_ k*_ k+ E` O*_ k+  E` !Oa "_ !6FO_ !_ 6FO_ kE` [OY��Oa #_ 5FOa $_ %a &,FO_ �&E` Oa '_ %a &,FO� X*a (a )a *a _ a _ a +ea a , -E` .O_ . (*a (a /a *a 0_ a 1_ a ,a , -O*j 2UUOP[OY�(O�ka 3���a , 4 ascr  ��ޭ