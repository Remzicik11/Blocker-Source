/// <summary>
/// Just Tools By RemziStudios
/// </summary>
using System;
using System.Windows;
using System.Windows.Input;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Blocker
{
    public partial class MainWindow : Window
    {
        private void Drag(object sender, MouseButtonEventArgs _event)
        {
            if (_event.ChangedButton == MouseButton.Left)
            {
                this.WindowState = WindowState.Normal;
                this.DragMove();
            }
        }

        private void MinimizeWindow(object sender, RoutedEventArgs _event)
        {
            this.WindowState = WindowState.Minimized;
        }


        public void Close(object sender, RoutedEventArgs _event)
        {
            this.BeginAnimation(
                 OpacityProperty,
                 new System.Windows.Media.Animation.DoubleAnimation()
                 {
                     From = 1,
                     To = 0,
                     EasingFunction = new System.Windows.Media.Animation.PowerEase() { EasingMode = System.Windows.Media.Animation.EasingMode.EaseInOut },
                     Duration = TimeSpan.FromSeconds(0.18)
                 }
             );

            new System.Threading.Thread(() =>
            {
                System.Threading.Thread.Sleep(180);
                Environment.Exit(0);
            }).Start();
        }
    }
}
