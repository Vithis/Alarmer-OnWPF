   M S B A M L   `   `   `  ����H  DAlarmer+OnWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:Alarmer_OnWPFAlarmer_OnWPF  5   	   ^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35tOclr-namespace:System.Windows.Forms.Integration;assembly=WindowsFormsIntegration System.Windows.Forms.Integration 5   	   [ WSystem.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089Y@clr-namespace:System.Windows.Forms;assembly=System.Windows.FormsSystem.Windows.Forms 5   	       Alarmer_OnWPF.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:Alarmer_OnWPF     5   	   bwindowOclr-namespace:System.Windows.Forms.Integration;assembly=WindowsFormsIntegration     5   	   Owf@clr-namespace:System.Windows.Forms;assembly=System.Windows.Forms     5   	   -   5          � Title$  	 Alarmer+��5
   	   $	��450��6   $	��800��6(   ���#767676.��5      ��  �� Padding$ 10q�6   $��10q�6   ���#2B2B2B._�5   
   �� .+�5      �  � ColumnDefinitions 5      �� 5      $��2* �6'   �� 5      $
��0.5* �6'   �� 5      $��0.25* �6'   .+�5      �� -   5         ��Name$ currentDateLabel��5      $��Date now��62   $��Center=�6E   $��Center=�5      $��SeogeUI)�61   $��30(�6F   
�������$��Medium"�5      $��0��6(   �� 5      -   5        $ currentDateLabel1��5      $��Time now��63   $��Center=�6F   $��Right=�5      $��SeogeUI)�60   $��33(�6E   
�������$��Medium"�5      $��1��6(   �� 5      -   5        $ currentDateLabel2��5      $��s��63   $��Center=�6?   $
��Left=�5      $��SeogeUI)�6/   $��25(�6D   
�������$��Medium"�5      $��2��6(   $��-9,5,0,0q�68   5      �� 5       ���#767676$��-10 0 -10 0q�6)   � 5"       5#      �� 5$      $��* �6'   �� 5%      $��* �6'   .+�5(      �� $��Status:��6   $��Center=�6*   $��Right=�5)      $��SeogeUI)�60   $��30(�6E   
�������$��Light"�5*      $��0��6'   �� 5,      -   5        $ statusLabel��5,      $��Not started��6-   $��Center=�6C   $
��Left=�5-      $��SeogeUI)�6/   $��30(�6D   ���#eee$��Light"�5.      $��1��6'   5/      �� 50      ���#767676$��-10 0 -10 0q�6)   � 52      $��10q�6    54      �� 55      $��1.75* �6'   �� 56      $��0.80* �6'   �� 57      $��0.70* �6'   .+�5:      7  1System.Windows.Forms.Integration.WindowsFormsHost     FontSize$ 35Q�6*      Padding$ 2q�68   $��2��6D      Child. 5;      )  #System.Windows.Forms.DateTimePicker     Format$
 Time=�6(   -   5        
timePicker��5;   N   5<      �� 5>      -   5         ��Name$ shortTimerSelect��5>   E   $��Bottom=�6   $��19(�67   $��
0 10 25 10q�6_   $��2q�6s   	 �� SelectedIndex$	 0��6   $��1��6�   .@�5?      �� .��6#   Select a timer63   �� 5@      .��6#   5 min6*   �� 5A      .��6#   10 min6+   �� 5B      .��6#   15 min6+   �� 5C      .��6#   20 min6+   �� 5D      .��6#   25 min6+   �� 5E      .��6#   30 min6+   �� 5F      .��6#   35 min6+   �� 5G      .��6#   40 min6+   �� 5H      .��6#   45 min6+   �� 5I      .��6#   50 min6+   �� 5J      .��6#   55 min6+   �� 5K      .��6#   1 hour6+   5M      �� 5N      $	��Top=�6   $��Timer��61   $��19(�6A   $��1��6O   
�������6_   �� 5O      -   5        $ timeLeftLabel��5O      $��10q�6/   $��Time left: 00:00:00��6;   $��35(�6Y   $��0��6g   
�������6w   5P      � 5S       5T      �� 5U      $��* �6'   �� 5V      $��* �6'   .+�5Y      �� -	   5        
 ��Name$
 startButton��5Y      $��
10 10 10 0q�6.   $��0��6B   $��start��6R   $��50��6b   $��20(�5Z      $
��Bold"�6'   
����������#F7630C 
  noGlow#���   6{   �� 5[      -
   5        $
 
stopButton��5[      $��
10 10 10 0q�6-   $��1��6A   $
��stop��6Q   $��50��6`   $��20(�5\      $
��Bold"�6'   
����������#A80000  	noGlowers#���  6z   5]      5_      5`      5a      