   M S B A M L   `   `   `  ����B  >Blocker, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:BlockerBlocker  5   	       Blocker.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Blocker     5   	     � Title$  
MainWindow��5   	   $	��200��6   $	��400��6)    � 
ResizeMode$ NoResize=�65    � AllowsTransparency$
 True��6K    � WindowStyle$
 None=�6e   ��6x   Z� ��6�   Z� .��5	      �� -   5        ���	#FFEEF3FC �� CornerRadius$ 3,3,3,3��5	   5   $��0.2,0.2,0.2,0.2q�6L   $��3,4,4,3q�6n    J� Effect 5
   
   3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 3Q�6      ShadowDepth$ 1Q�6.      Opacity$
 0.49Q�6>   ._�5   
   � .+�5      �� -   5        	 ��Name$	 Hours��5      $
��Left=�6'   $��00��6B   $	��Top=�6L   $��59��6d   $��28��6o   $��	81,41,0,0q�6{   $��17(�6�   
 �� TextAlignment$
 Center=�6�   
���   �6�   �� 5      -   5         ��Name$ 
HoursInput��5   9    �� 	MaxLength$ 2��6   $y�Visible=�6$   $
��Left=�6M   $��00��6i    �� TextWrapping$
 Wrap=�6s   $	��Top=�6�   $��59��6�   $��28��6�   $��	81,41,0,0q�6�   ���	#33AEAEAE$��17(�6�    �� TextAlignment$ Center=�6�   ���	#FFF7F8FA.��6   � 	Resources 5       �� 
TargetType �� Property �� Value��%^   '��       �� 5      " ��6   .�5      ��  �@��CornerRadius$ 8��69   5      5      .��6%   5      �� 5      $��154,47,242,134q�6   $��:��61   
���   �$
��Bold"�6M   �� 5      -   5        $	 Minutes��5      $��Center=�6)   $��00��6F   $	��Top=�6P   $��59��6h   $��28��6s   $��0,41,0,0q�6   $��17(�6�   $
 Center=�6�   
���   �6�   �� 5      -   5        $ MinutesInput��5   9   $ 2��6   $y�Visible=�6$   $��Center=�6O   $��00��6m   $
 Wrap=�6w   $	��Top=�6�   $��59��6�   $��28��6�   $��0,41,0,0q�6�   ���	#33AEAEAE$��17(�6�   $ Center=�6�   ���	#FFF7F8FA.��6    5      ��%^   '��       �� 5      " ��6   .�5      ��  �@��CornerRadius$ 8��69   5       5!      .��6%   5"      �� 5%      $��245,47,151,134q�6   $��:��61   
���   �$
��Bold"�6M   �� 5'      -   5        $	 Seconds��5'      $��Right=�6)   $��00��6E   $	��Top=�6O   $��59��6g   $��28��6r   $��	0,41,81,0q�6~   $��17(�6�   $
 Center=�6�   
���   �6�   �� 5)      -   5        $ SecondsInput��5)   9   $ 2��6   $y�Visible=�6$   $��Right=�6O   $��00��6k   $
 Wrap=�6u   $	��Top=�6�   $��59��6�   $��28��6�   $��	0,41,81,0q�6�   ���	#33AEAEAE$��17(�6�   $ Center=�6�   ���	#FFF7F8FA.��6   5*      ��%^   '��       �� 5+      " ��6   .�5,      ��  �@��CornerRadius$ 8��69   5-      5.      .��6%   5/      �� 52      -   5         ��Name$ StartButton��52      
 � Tag$ [ready]��6*   $��40��6W   $��41��6b   $��Center=�6n      ButtonStyle#���   6�   $��
0,103,0,49q�6�   ���	#FF4467F5 53      ��%_   '��       �� 54      " ��6   .�55      ��  �@��CornerRadius$ 18��69   56      57      ��58      �� 59       �� EndPoint$	 0,1&�6*    �� 
StartPoint$	 1,1&�69    � MappingMode$ RelativeToBoundingBox=�6J    � SpreadMethod$	 Pad=�6n   .��5:      �  � Color$ 	#FF4467F5��6'    � Offset$ 0Q�69   � 5;      $ 	#FF4467F5��6'   $ 1Q�69   � 5<      $ 	#FF8AA8FD��6'   $ 1Q�69   � 5=      $ 	#FF8AA8FD��6'   $ 1Q�69   5>      .��5A      �� $��/Assets/StartSymbol.png��6   $��10q�69   6G   5B      �� 5F      -	   5          BorderButtonStyle#���  5F   #   $	��Top=�6O   $��Right=�6g   $��21��6�   $��21��6�   $��0,0,2,0q�6�   ��6�   Z� ��6�   Z� ��6�   Z� .��5G      �� $��/Assets/CloseSymbol.png��6   $��1,1,1,1q�69   6L    5H      ��%^   '��       �� 5I      " ��6   .�5J      ��  �@��CornerRadius$ 8��69   5K      5L      5M      �� 5N      -
   5        #���  5N   ,   $	��Top=�6X   $��Right=�6p   $��21��6�   $��21��6�   $��0,0,30,0q�6�   ��6�   Z� ��6�   Z� ��6�   Z� .��5O      �� $ ��/Assets/MinimizeSymbol.png��6   $��1,1,1,1q�6<   6O    5P      ��%^   '��       �� 5Q      " ��6   .�5R      ��  �@��CornerRadius$ 8��69   5S      5T      5U      5V      5W      5X      