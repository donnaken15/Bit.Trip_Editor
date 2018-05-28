using System.Windows.Forms;
using System.Threading;
using System.Diagnostics;
using System.Runtime.InteropServices;
using System;
using System.Drawing;
using System.Drawing.Imaging;

namespace Designer
{
    public partial class BeatEditor : Form
    {
        public static decimal bpm;
        public static string name;
        public static string fname;
        public static byte r;
        public static byte g;
        public static byte b;
        public Graphics draw;
        public bool playing;
        public int fps;

        public BeatEditor()
        {
            fps = 60;
            InitializeComponent();
            TV.BackColor = Color.FromArgb(r,g,b);
        }

        private void endEditor(object sender, FormClosingEventArgs e)
        {
            LibraryGame.Dispose();
            BeatLibrary.Dispose();
            BeatLibraryTab.Dispose();
            BeatLibraryTextures.Dispose();
            TV.Dispose();
            Dispose();
            GC.Collect();
        }

        private void timelineBar_Scroll(object sender, EventArgs e)
        {

        }

        private void play_Click(object sender, EventArgs e)
        {
            playing = true;
        }

        private void pause_Click(object sender, EventArgs e)
        {
            playing = false;
        }

        private void timelineUpdate_Tick(object sender, EventArgs e)
        {
            if (playing == true)
            { try { timelineBar.Value++; } catch { playing = false; } }
            timelineUpdate.Interval = 1000/fps;
            timelineInfo.Text = "Time: " + timelineBar.Value.ToString() + " / n/a frames, " + (timelineBar.Value/fps/216000).ToString() + ":" + (timelineBar.Value / fps / 3600).ToString() + ":" + (timelineBar.Value / fps).ToString() + "." + (timelineBar.Value).ToString();
        }
    }

    public class User32
    {
        [StructLayout(LayoutKind.Sequential)]
        public struct Rect
        {
            public int left;
            public int top;
            public int right;
            public int bottom;
        }

        [DllImport("user32.dll")]
        public static extern IntPtr GetWindowRect(IntPtr hWnd, ref Rect rect);
    }
}
