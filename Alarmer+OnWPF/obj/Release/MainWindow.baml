   M S B A M L   `   `   `  ���� H  DAlarmer+OnWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:Alarmer_OnWPFAlarmer_OnWPF  ^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35tOclr-namespace:System.Windows.Forms.Integration;assembly=WindowsFormsIntegration System.Windows.Forms.Integration [ WSystem.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089Y@clr-namespace:System.Windows.Forms;assembly=System.Windows.FormsSystem.Windows.Forms     Alarmer_OnWPF.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     -localclr-namespace:Alarmer_OnWPF     bwindowOclr-namespace:System.Windows.Forms.Integration;assembly=WindowsFormsIntegration     Owf@clr-namespace:System.Windows.Forms;assembly=System.Windows.Forms     -     � Title$  	 Alarmer+��$	��450��$	��800�����#767676.����  �� Padding$ 10q�$��10q����#2B2B2B._��� .+��  � ColumnDefinitions �� $��2* ��� $
��0.5* ��� $��0.25* �.+��� -    ��Name$ currentDateLabel��$��Date now��$��Center=�$��Center=�$��SeogeUI)�$��30(�
�������$��Medium"�$��0���� -   $ currentDateLabel1��$��Time now��$��Center=�$��Right=�$��SeogeUI)�$��33(�
�������$��Medium"�$��1���� -   $ currentDateLabel2��$��s��$��Center=�$
��Left=�$��SeogeUI)�$��25(�
�������$��Medium"�$��2��$��-9,5,0,0q��� ���#767676$��-10 0 -10 0q��  �� $��* ��� $��* �.+��� $��Status:��$��Center=�$��Right=�$��SeogeUI)�$��30(�
�������$��Light"�$��0���� -   $ statusLabel��$��Not started��$��Center=�$
��Left=�$��SeogeUI)�$��30(����#eee$��Light"�$��1���� ���#767676$��-10 0 -10 0q�� $��10q� �� $��1.75* ��� $��0.80* ��� $��0.70* �.+�7  1System.Windows.Forms.Integration.WindowsFormsHost     FontSize$ 35Q�   Padding$ 2q�$��2��   Child. )  #System.Windows.Forms.DateTimePicker     Format$
 Time=�-   
timePicker���� -    ��Name$ shortTimerSelect��$��Bottom=�$��19(�$��
0 10 25 10q�$��2q�	 �� SelectedIndex$	 0��$��1��.@��� .��Select a timer�� .��5 min�� .��10 min�� .��15 min�� .��20 min�� .��25 min�� .��30 min�� .��35 min�� .��40 min�� .��45 min�� .��50 min�� .��55 min�� .��1 hour�� $	��Top=�$��Timer��$��19(�$��1��
��������� -   $ timeLeftLabel��$��10q�$��Time left: 00:00:00��$��35(�$��0��
��������  �� $��* ��� $��* �.+��� -	   
 ��Name$
 startButton��$��
10 10 10 0q�$��0��$��start��$��50��$��20(�$
��Bold"�
����������#F7630C 
  noGlow#���   �� -
   $
 
stopButton��$��
10 10 10 0q�$��1��$
��stop��$��50��$��20(�$
��Bold"�
����������#A80000  	noGlowers#���  