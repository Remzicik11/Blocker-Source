   M S B A M L   `   `   `  ���� B  >Blocker, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:BlockerBlocker      Blocker.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     'localclr-namespace:Blocker       � Title$  
MainWindow��$	��200��$	��400�� � 
ResizeMode$ NoResize=� � AllowsTransparency$
 True�� � WindowStyle$
 None=���Z� ��Z� .���� -   ���	#FFEEF3FC �� CornerRadius$ 3,3,3,3��$��0.2,0.2,0.2,0.2q�$��3,4,4,3q� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     
BlurRadius$ 3Q�   ShadowDepth$ 1Q�   Opacity$
 0.49Q�._�� .+��� -   	 ��Name$	 Hours��$
��Left=�$��00��$	��Top=�$��59��$��28��$��	81,41,0,0q�$��17(�
 �� TextAlignment$
 Center=�
���   ��� -    ��Name$ 
HoursInput�� �� 	MaxLength$ 2��$y�Visible=�$
��Left=�$��00�� �� TextWrapping$
 Wrap=�$	��Top=�$��59��$��28��$��	81,41,0,0q����	#33AEAEAE$��17(� �� TextAlignment$ Center=����	#FFF7F8FA.�� � 	Resources  �� 
TargetType �� Property �� Value��%9   '��       �� " ��.���  �@��CornerRadius$ 8��.���� $��154,47,242,134q�$��:��
���   �$
��Bold"��� -   $	 Minutes��$��Center=�$��00��$	��Top=�$��59��$��28��$��0,41,0,0q�$��17(�$
 Center=�
���   ��� -   $ MinutesInput��$ 2��$y�Visible=�$��Center=�$��00��$
 Wrap=�$	��Top=�$��59��$��28��$��0,41,0,0q����	#33AEAEAE$��17(�$ Center=����	#FFF7F8FA.�� ��%9   '��       �� " ��.���  �@��CornerRadius$ 8��.���� $��245,47,151,134q�$��:��
���   �$
��Bold"��� -   $	 Seconds��$��Right=�$��00��$	��Top=�$��59��$��28��$��	0,41,81,0q�$��17(�$
 Center=�
���   ��� -   $ SecondsInput��$ 2��$y�Visible=�$��Right=�$��00��$
 Wrap=�$	��Top=�$��59��$��28��$��	0,41,81,0q����	#33AEAEAE$��17(�$ Center=����	#FFF7F8FA.�� ��%9   '��       �� " ��.���  �@��CornerRadius$ 8��.���� -    ��Name$ StartButton��
 � Tag$ [ready]��$��40��$��41��$��Center=�   ButtonStyle#���   $��
0,103,0,49q����	#FF4467F5 ��%:   '��       �� " ��.���  �@��CornerRadius$ 18������  �� EndPoint$	 0,1&� �� 
StartPoint$	 1,1&� � MappingMode$ RelativeToBoundingBox=� � SpreadMethod$	 Pad=�.���  � Color$ 	#FF4467F5�� � Offset$ 0Q�� $ 	#FF4467F5��$ 1Q�� $ 	#FF8AA8FD��$ 1Q�� $ 	#FF8AA8FD��$ 1Q�.���� $��/Assets/StartSymbol.png��$��10q��� -	     BorderButtonStyle#���  $	��Top=�$��Right=�$��21��$��21��$��0,0,2,0q���Z� ��Z� ��Z� .���� $��/Assets/CloseSymbol.png��$��1,1,1,1q� ��%9   '��       �� " ��.���  �@��CornerRadius$ 8���� -
   #���  $	��Top=�$��Right=�$��21��$��21��$��0,0,30,0q���Z� ��Z� ��Z� .���� $ ��/Assets/MinimizeSymbol.png��$��1,1,1,1q� ��%9   '��       �� " ��.���  �@��CornerRadius$ 8��