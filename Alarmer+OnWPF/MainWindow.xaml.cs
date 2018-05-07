using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Media;

namespace Alarmer_OnWPF
{
 
    public partial class MainWindow : Window
    {
        DispatcherTimer currentTime = new DispatcherTimer();
        DispatcherTimer alarm = new DispatcherTimer();

        TimeSpan untilAlarm = new TimeSpan();
      
        DateTime userTime = new DateTime();

        SoundPlayer playSound = new SoundPlayer(Properties.Resources.abcde);

        public MainWindow()
        {
            InitializeComponent();
            this.WindowStartupLocation = WindowStartupLocation.CenterScreen;
            string date = DateTime.Now.ToString("dddd, MMMM d, yyyy");
            string clock = DateTime.Now.ToString("HH:mm");
            string seconds = DateTime.Now.ToString(":ss");
            currentDateLabel.Content = date;
            currentDateLabel1.Content = clock;
            currentDateLabel2.Content = seconds;
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            //currentTime
            currentTime.Interval = new TimeSpan(0, 0, 1);
            currentTime.Tick += currentTime_Tick;
            currentTime.Start();

            //alarm
            alarm.Interval = new TimeSpan(0, 0, 1);
            alarm.Tick += Alarm_Tick;
        }

        private void Alarm_Tick(object sender, EventArgs e)
        {
            checkForAlarm();

            timeLeftLabel.Content = "Time left: " + untilAlarm.ToString(@"hh\:mm\:ss");
        }

        private void currentTime_Tick(object sender, EventArgs e)
        {
            string clock = DateTime.Now.ToString("HH:mm");
            string date = DateTime.Now.ToString("dddd, MMMM d, yyyy");
            string seconds = DateTime.Now.ToString(":ss");
            currentDateLabel.Content = date;
            currentDateLabel1.Content = clock;
            currentDateLabel2.Content = seconds;
        }

        private void checkForAlarm()
        {
            if (shortTimerSelect.SelectedIndex == 0)
            {
                HandleTimeError();
            }
            else
            {
                untilAlarm = userTime - DateTime.Now;
            }
            
            if (DateTime.Now.Hour == userTime.Hour && DateTime.Now.Minute == userTime.Minute && DateTime.Now.Second == userTime.Second)
            {
                if (WindowState == WindowState.Minimized)
                {
                    WindowState = WindowState.Normal;
                }
                alarm.Stop();
                playSound.PlayLooping();
                timeLeftLabel.Content = "Time left: 00:00:00";
                statusLabel.Content = "Ringing!";
                statusLabel.Foreground = Brushes.Red;
                MessageBox.Show("Alarm!", "Alarmer+", MessageBoxButton.OK, MessageBoxImage.Asterisk);
                
            }
        }

        private void HandleTimeError()
        {
            try
            {
                if (timePicker.Value < DateTime.Now)
                {
                    untilAlarm = timePicker.Value - DateTime.Now;
                    untilAlarm += TimeSpan.FromDays(1);
                }

                else
                {
                    untilAlarm = timePicker.Value - DateTime.Now;
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
          
        }

        async void runningText()
        {
            while (statusLabel.Foreground == Brushes.Green)
            {
                if (statusLabel.Foreground == Brushes.Red)
                {
                    break;
                }
                statusLabel.Content = "Running";
                if (statusLabel.Foreground == Brushes.Red)
                {
                    break;
                }
                await Task.Delay(500);
                if (statusLabel.Foreground == Brushes.Red)
                {
                    break;
                }
                statusLabel.Content = "Running .";
                if (statusLabel.Foreground == Brushes.Red)
                {
                    break;
                }
                await Task.Delay(500);
                if (statusLabel.Foreground == Brushes.Red)
                {
                    break;
                }
                statusLabel.Content = "Running . .";
                if (statusLabel.Foreground == Brushes.Red)
                {
                    break;
                }
                await Task.Delay(500);
                if (statusLabel.Foreground == Brushes.Red)
                {
                    break;
                }
                statusLabel.Content = "Running . . .";
                if (statusLabel.Foreground == Brushes.Red)
                {
                    break;
                }
                await Task.Delay(500);
                if (statusLabel.Foreground == Brushes.Red)
                {
                    break;
                }

            }
        }

        private void startButton_Click(object sender, RoutedEventArgs e)
        {
     
            switch (shortTimerSelect.SelectedIndex)
                {
                    case 0:
                        userTime = timePicker.Value;
                        break;
                    case 1:
                        userTime = DateTime.Now.AddMinutes(5);
                        break;
                    case 2:
                        userTime = DateTime.Now.AddMinutes(10);
                        break;
                    case 3:
                        userTime = DateTime.Now.AddMinutes(15);
                        break;
                    case 4:
                        userTime = DateTime.Now.AddMinutes(20);
                        break;
                    case 5:
                        userTime = DateTime.Now.AddMinutes(25);
                        break;
                    case 6:
                        userTime = DateTime.Now.AddMinutes(30);
                        break;
                    case 7:
                        userTime = DateTime.Now.AddMinutes(35);
                        break;
                    case 8:
                        userTime = DateTime.Now.AddMinutes(40);
                        break;
                    case 9:
                        userTime = DateTime.Now.AddMinutes(45);
                        break;
                    case 10:
                        userTime = DateTime.Now.AddMinutes(50);
                        break;
                    case 11:
                        userTime = DateTime.Now.AddMinutes(55);
                        break;
                    case 12:
                        userTime = DateTime.Now.AddHours(1);
                        break;
                }
            

            
            alarm.Start();
            checkForAlarm();
            timeLeftLabel.Content = "Time left: " + untilAlarm.ToString(@"hh\:mm\:ss");
            statusLabel.Content = "Running";
            statusLabel.Foreground = Brushes.Green;
            runningText();
            shortTimerSelect.IsEnabled = false;
      
        }

        private void stopButton_Click(object sender, RoutedEventArgs e)
        {
            alarm.Stop();
            playSound.Stop();
            timeLeftLabel.Content = "Time left: 00:00:00";
            statusLabel.Content = "Stopped";
            statusLabel.Foreground = Brushes.Red;
            shortTimerSelect.SelectedIndex = 0;
            shortTimerSelect.IsEnabled = true;
        
        }
       
    }
}
