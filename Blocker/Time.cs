using System;
using System.Threading;

/// <summary>
/// Just Tools By RemziStudios
/// </summary>
namespace JustTools
{
    public class Time
    {
        private static DateTime OldTime = DateTime.Now;

        private static DateTime CurrentTime = DateTime.Now;

        public static float deltaTime { get; protected set; }

        public static void Init()
        {
            new Thread(() =>
            {
                while (true)
                {
                    CurrentTime = DateTime.Now;
                    deltaTime = (CurrentTime.Ticks - OldTime.Ticks - 40) / 10000000f;
                    OldTime = CurrentTime;
                    Thread.Sleep(40);
                }
            }).Start();
        }
    }
}
