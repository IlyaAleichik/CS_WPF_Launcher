   M S B A M L   `   `   `  ����K  GArbitrixLauncher, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:ArbitrixLauncher.ControlsArbitrixLauncher.Controls  5      I)clr-namespace:ArbitrixLauncher.ConvertersArbitrixLauncher.Converters  5      /    )ArbitrixLauncher.Controls.PreloaderWindow   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:ArbitrixLauncher.Controls     5      8cv)clr-namespace:ArbitrixLauncher.Converters     5      .��5
      � .+�5   
   �� $	��300��6   $	��400��6!     �� RadiusX$  3��6-    �� RadiusY$ 3��69   
������� J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         ShadowDepth$ 1Q�6#      Opacity$	 0.7Q�63   5      � 5   
    J� RenderTransformOrigin$ 0.5,0.5&�6   $��50��66   $��50��6B      CircleProgressBarStyle#���   6N   
������  � Minimum$ 0Q�6�    � Maximum$	 100Q�6�    � Value$ 25Q�6�   
	 � Tag$	 5��6�   ��6�   Z� ��5      �� 5      
 �� Color#
 � ��6"   z�5      �� 5      -   5        Rotation��5   "    � Triggers 5      :� 5       :� RoutedEvent$ Loaded��6   .[�5      �� .��5      �� .��5      U�  �� 
TargetName$ Rotation��5       �� TargetProperty$ Angle�6:    g� Duration$ 0:0:1D�5       g� RepeatBehavior$ Forever��6*   .\�5   "   8  2ArbitrixLauncher.Converters.StepwiseDoubleKeyFrame   O� KeyTime$
 100%��6=    O� Value$	 360Q�6L      NumberOfParts$ 35��6X   5       5!      5"      5#      5%      �� 5&   
   $	��300��6   $	��400��6!    �� Padding$ 15q�6-   $��Загрузка...��6:   $��20(�6M   
���   �6[   �� 5'   
   $	��300��6   $	��400��6!   $ 	15,60,0,0q�6-   $-��'Подождите пожалуйста��6A   $��16(�6]   
���   �6k   �� 5(   
   -   5        $��30��5(      $	��100��6   $��260,240,0,0q�6)   $��16(�6?   $��Закрыть��6M   
���   �6r   5)      5+      