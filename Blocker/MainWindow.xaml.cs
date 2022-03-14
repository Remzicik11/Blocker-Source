using System;
using System.Timers;
using System.Windows;
using System.Windows.Media.Animation;
using System.Windows.Controls;
using System.Runtime.InteropServices;
using System.Drawing;

namespace Blocker
{
    public partial class MainWindow : Window
    {
        [DllImport("User32.dll")]
        public static extern IntPtr GetDC(IntPtr hwnd);
        [DllImport("User32.dll")]
        public static extern void ReleaseDC(IntPtr hwnd, IntPtr dc);

        private byte TargetSeconds;

        private byte TargetMinutes;

        private byte TargetHours;

        private int Sum;

        private Timer InternalTimer = new Timer(1000);

        public MainWindow()
        {
            InitializeComponent();
            JustTools.Time.Init();
            InternalTimer.Elapsed += InternalTimerElapsed;
        }

        private void WipeScreenOut()
        {


            float WipeTime = 10000;
            while (WipeTime > 0)
            {
                IntPtr desktopPtr = GetDC(IntPtr.Zero);
                Graphics g = Graphics.FromHdc(desktopPtr);
                WipeTime -= JustTools.Time.deltaTime;
                SolidBrush b = new SolidBrush(Color.Black);
                g.FillRectangle(b, new Rectangle(0, 0, 1920, 1080));
                ReleaseDC(IntPtr.Zero, desktopPtr);
                g.Dispose();
            }
        }

        private void StartTimer(object sender, RoutedEventArgs _event)
        {
            if (TargetSeconds + TargetMinutes + TargetHours > 0)
            {
                TargetSeconds = 0;
                TargetMinutes = 0;
                TargetHours = 0;

                (StartButton.Background as System.Windows.Media.LinearGradientBrush).GradientStops[1].BeginAnimation(System.Windows.Media.GradientStop.OffsetProperty, new DoubleAnimation()
                {
                    To = ((double)1) / Sum * (Sum - (TargetSeconds + TargetMinutes * 60 + TargetHours * 60 * 60)),
                    Duration = TimeSpan.FromSeconds(0.3),
                    EasingFunction = new PowerEase() { EasingMode = EasingMode.EaseInOut }
                });
                (StartButton.Background as System.Windows.Media.LinearGradientBrush).GradientStops[2].BeginAnimation(System.Windows.Media.GradientStop.OffsetProperty, new DoubleAnimation()
                {
                    To = ((double)1) / Sum * (Sum - (TargetSeconds + TargetMinutes * 60 + TargetHours * 60 * 60)) + 0.05,
                    Duration = TimeSpan.FromSeconds(0.3),
                    EasingFunction = new PowerEase() { EasingMode = EasingMode.EaseInOut }
                });

                InternalTimer.Stop();
                UIAnimationHander.StopTimerAnimation();
                return;
            }

            if (!Validate(SecondsInput, ref TargetSeconds)) { return; }
            if (!Validate(MinutesInput, ref TargetMinutes)) { return; }
            if (!Validate(HoursInput, ref TargetHours)) { return; }

            Seconds.Text = ByteToTime(TargetSeconds);
            Minutes.Text = ByteToTime(TargetMinutes);
            Hours.Text = ByteToTime(TargetHours);
            Sum = TargetSeconds + TargetMinutes * 60 + TargetHours * 60 * 60;
            UIAnimationHander.StartTimerAnimation();

            InternalTimer.Start();
        }

        private void InternalTimerElapsed(object sender, ElapsedEventArgs _event)
        {
            Dispatcher.Invoke(() =>
            {
                Seconds.Text = ByteToTime(TargetSeconds);
                Minutes.Text = ByteToTime(TargetMinutes);
                Hours.Text = ByteToTime(TargetHours);

                if (Sum != 0)
                {
                    (StartButton.Background as System.Windows.Media.LinearGradientBrush).GradientStops[1].BeginAnimation(System.Windows.Media.GradientStop.OffsetProperty, new DoubleAnimation()
                    {
                        To = ((double)1) / Sum * (Sum - (TargetSeconds + TargetMinutes * 60 + TargetHours * 60 * 60)),
                        Duration = TimeSpan.FromSeconds(0.3),
                        EasingFunction = new PowerEase() { EasingMode = EasingMode.EaseInOut }
                    });
                    (StartButton.Background as System.Windows.Media.LinearGradientBrush).GradientStops[2].BeginAnimation(System.Windows.Media.GradientStop.OffsetProperty, new DoubleAnimation()
                    {
                        To = ((double)1) / Sum * (Sum - (TargetSeconds + TargetMinutes * 60 + TargetHours * 60 * 60)) + 0.05,
                        Duration = TimeSpan.FromSeconds(0.3),
                        EasingFunction = new PowerEase() { EasingMode = EasingMode.EaseInOut }
                    });
                }
            });

            if (TargetSeconds == 0)
            {
                TargetSeconds = 59;

                if (TargetMinutes == 0)
                {
                    TargetMinutes = 59;

                    if (TargetHours == 0)
                    {
                        InternalTimer.Stop();
                        WipeScreenOut();
                        Dispatcher.Invoke(UIAnimationHander.StopTimerAnimation);
                    }
                    else
                    {
                        TargetHours--;
                    }
                }
                else
                {
                    TargetMinutes--;
                }
            }
            else
            {
                TargetSeconds--;
            }

        }

        private bool Validate(TextBox textBox, ref byte Target)
        {
            try
            {
                Target = byte.Parse(textBox.Text);
                return true;
            }
            catch
            {
                textBox.Text = "00";
                return false;
            }
        }

        private string ByteToTime(byte value)
        {
            return value.ToString().Length < 2 ? "0" + value : value.ToString();
        }
    }
}
