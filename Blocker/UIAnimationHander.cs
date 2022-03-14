using System;
using System.Windows;
using System.Windows.Media;
using System.Windows.Controls;
using System.Windows.Media.Animation;
using System.Collections.Generic;
using System.Text;

namespace Blocker
{
    public class UIAnimationHander
    {
        private static MainWindow staticWindow = Application.Current.MainWindow as MainWindow;

        public static void StartTimerAnimation()
        {
            var easeFunction = new PowerEase() { EasingMode = EasingMode.EaseInOut };
            var duration = TimeSpan.FromSeconds(0.3);
            staticWindow.StartButton.BeginAnimation(Control.WidthProperty, new DoubleAnimation()
            {
                To = 200,
                Duration = duration,
                EasingFunction = easeFunction
            });


            //staticWindow.StartButton.IsEnabled = false;
            var gradientStopAnimation = new DoubleAnimation()
            {
                To = 0,
                Duration = TimeSpan.FromSeconds(0.8),
                EasingFunction = easeFunction
            };
            (staticWindow.StartButton.Background as LinearGradientBrush).GradientStops[1].BeginAnimation(GradientStop.OffsetProperty, gradientStopAnimation);
            gradientStopAnimation.Duration = TimeSpan.FromSeconds(1);
            (staticWindow.StartButton.Background as LinearGradientBrush).GradientStops[2].BeginAnimation(GradientStop.OffsetProperty, gradientStopAnimation);

            var opacityAnimaton = new DoubleAnimation()
            {
                To = 0,
                Duration = TimeSpan.FromSeconds(0.3),
                EasingFunction = easeFunction
            };
            staticWindow.SecondsInput.BeginAnimation(Control.OpacityProperty, opacityAnimaton);
            staticWindow.MinutesInput.BeginAnimation(Control.OpacityProperty, opacityAnimaton);
            staticWindow.HoursInput.BeginAnimation(Control.OpacityProperty, opacityAnimaton);
        }

        public static void StopTimerAnimation()
        {
            var easeFunction = new PowerEase() { EasingMode = EasingMode.EaseInOut };
            var duration = TimeSpan.FromSeconds(0.3);
            staticWindow.StartButton.BeginAnimation(Control.WidthProperty, new DoubleAnimation()
            {
                To = 40,
                Duration = duration,
                EasingFunction = easeFunction
            });
            

            //staticWindow.StartButton.IsEnabled = false;
            var opacityAnimaton = new DoubleAnimation()
            {
                To = 1,
                Duration = TimeSpan.FromSeconds(0.3),
                EasingFunction = easeFunction
            };
            staticWindow.SecondsInput.BeginAnimation(Control.OpacityProperty, opacityAnimaton);
            staticWindow.MinutesInput.BeginAnimation(Control.OpacityProperty, opacityAnimaton);
            staticWindow.HoursInput.BeginAnimation(Control.OpacityProperty, opacityAnimaton);
        }
    }
}
