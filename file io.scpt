FasdUAS 1.101.10   ��   ��    k             l     ��  ��     	 file i/o     � 	 	    f i l e   i / o   
  
 l     ��������  ��  ��        l     ��  ��    X R set iter to read "/Users/frank/Library/Scripts/Reply to All Unsubscribe Data.txt"     �   �   s e t   i t e r   t o   r e a d   " / U s e r s / f r a n k / L i b r a r y / S c r i p t s / R e p l y   t o   A l l   U n s u b s c r i b e   D a t a . t x t "      l     ��  ��     
 iter is 0     �      i t e r   i s   0      l     ��������  ��  ��        l     ��  ��    c ]set iter to read "Macintosh HD:Users:frank:Library:Scripts:Reply to All Unsubscribe Data.txt"     �   � s e t   i t e r   t o   r e a d   " M a c i n t o s h   H D : U s e r s : f r a n k : L i b r a r y : S c r i p t s : R e p l y   t o   A l l   U n s u b s c r i b e   D a t a . t x t "      l     ��   ��    0 * error: can't make that string into a file      � ! ! T   e r r o r :   c a n ' t   m a k e   t h a t   s t r i n g   i n t o   a   f i l e   " # " l     ��������  ��  ��   #  $ % $ l     �� & '��   & #  get path to home as an alias    ' � ( ( :   g e t   p a t h   t o   h o m e   a s   a n   a l i a s %  ) * ) l     +���� + r      , - , e      . . I    �� /��
�� .earsffdralis        afdr / m     ��
�� afdrcusr��   - o      ���� 0 home  ��  ��   *  0 1 0 l    2���� 2 r     3 4 3 b     5 6 5 n     7 8 7 1   	 ��
�� 
psxp 8 o    	���� 0 home   6 m     9 9 � : : 0 L i b r a r y / S c r i p t s / D a t a . t x t 4 o      ���� 0 fn  ��  ��   1  ; < ; l     ��������  ��  ��   <  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A * $ we need that file to actually exist    B � C C H   w e   n e e d   t h a t   f i l e   t o   a c t u a l l y   e x i s t @  D E D l     �� F G��   F H B so we'll define a function to test existense else create the file    G � H H �   s o   w e ' l l   d e f i n e   a   f u n c t i o n   t o   t e s t   e x i s t e n s e   e l s e   c r e a t e   t h e   f i l e E  I J I l     �� K L��   K S M I'll assume paths will always be POSIX style rather than old Macintosh style    L � M M �   I ' l l   a s s u m e   p a t h s   w i l l   a l w a y s   b e   P O S I X   s t y l e   r a t h e r   t h a n   o l d   M a c i n t o s h   s t y l e J  N O N i      P Q P I      �� R���� 0 
pathexists 
pathExists R  S�� S o      ���� 0 s  ��  ��   Q Q     % T U V T k     W W  X Y X c    	 Z [ Z 4    �� \
�� 
psxf \ o    ���� 0 s   [ m    ��
�� 
alis Y  ]�� ] L   
  ^ ^ m   
 ��
�� boovtrue��   U R      ������
�� .ascrerr ****      � ****��  ��   V k    % _ _  ` a ` l   �� b c��   b 4 . Surely there's a native way to create a file!    c � d d \   S u r e l y   t h e r e ' s   a   n a t i v e   w a y   t o   c r e a t e   a   f i l e ! a  e f e I   �� g��
�� .sysoexecTEXT���     TEXT g b     h i h m     j j � k k  t o u c h   i o    ���� 0 s  ��   f  l m l l   �� n o��   n , & Read doesn't like to read empty files    o � p p L   R e a d   d o e s n ' t   l i k e   t o   r e a d   e m p t y   f i l e s m  q�� q I   %�� r s
�� .rdwrwritnull���     **** r m    ����   s �� t u
�� 
as   t m    ��
�� 
TEXT u �� v��
�� 
refn v o     !���� 0 s  ��  ��   O  w x w l     ��������  ��  ��   x  y z y l     �� { |��   {   pathExists of fn    | � } } "   p a t h E x i s t s   o f   f n z  ~  ~ l    ����� � I    �� ����� 0 
pathexists 
pathExists �  ��� � o    ���� 0 fn  ��  ��  ��  ��     � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ����� � r      � � � I   �� � �
�� .rdwrread****        **** � o    ���� 0 fn   � �� ���
�� 
as   � m    ��
�� 
TEXT��   � o      ���� 0 dat  ��  ��   �  � � � l     �� � ���   �   iterate dat    � � � �    i t e r a t e   d a t �  � � � l  ! , ����� � I  ! ,�� � �
�� .rdwrwritnull���     **** � [   ! $ � � � o   ! "���� 0 dat   � m   " #����  � �� � �
�� 
refn � o   % &���� 0 fn   � �� ���
�� 
as   � m   ' (��
�� 
TEXT��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  ��� � l      �� � ���   � � �
-- coerce to integerset dat to dat as integerdat-- dat as integer-- 0set newDat to dat + 1 as stringwrite newDat to fn-- write "0" to fn-- wrote "1" to the file
    � � � �V 
 - -   c o e r c e   t o   i n t e g e r  s e t   d a t   t o   d a t   a s   i n t e g e r  d a t  - -   d a t   a s   i n t e g e r  - -   0   s e t   n e w D a t   t o   d a t   +   1   a s   s t r i n g  w r i t e   n e w D a t   t o   f n  - -   w r i t e   " 0 "   t o   f n  - -   w r o t e   " 1 "   t o   t h e   f i l e 
��       �� � � ���   � ������ 0 
pathexists 
pathExists
�� .aevtoappnull  �   � **** � �� Q���� � ����� 0 
pathexists 
pathExists�� �� ���  �  ���� 0 s  ��   � ���� 0 s   � �������� j������������
�� 
psxf
�� 
alis��  ��  
�� .sysoexecTEXT���     TEXT
�� 
as  
�� 
TEXT
�� 
refn�� 
�� .rdwrwritnull���     ****�� & *�/�&OeW X  �%j Oj���� 
 � �� ���~ � ��}
�� .aevtoappnull  �   � **** � k     , � �  ) � �  0 � �  ~ � �  � � �  ��|�|  �  �~   �   � �{�z�y�x 9�w�v�u�t�s�r�q�p�o
�{ afdrcusr
�z .earsffdralis        afdr�y 0 home  
�x 
psxp�w 0 fn  �v 0 
pathexists 
pathExists
�u 
as  
�t 
TEXT
�s .rdwrread****        ****�r 0 dat  
�q 
refn�p 
�o .rdwrwritnull���     ****�} -�j E�O��,�%E�O*�k+ O���l 	E�O�k�����  ascr  ��ޭ