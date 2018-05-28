using System;
using System.Windows.Forms;

namespace Designer
{
    public partial class newDialog : Form
    {
        public static int gametype;

        public static string levelname;

        public static decimal bpmValue;

        public static byte colorR;

        public static byte colorG;

        public static byte colorB;

        public newDialog()
        {
            InitializeComponent();
            gamemode.SelectedIndex = Properties.Settings.Default.PreviousGame;
        }

        private void bgColorBTN_Click(object sender, EventArgs e)
        {
            setColor.ShowDialog();
        }

        private void ok_Click(object sender, EventArgs e)
        {
            gametype = gamemode.SelectedIndex;
            levelname = nameLvl.Text;
            bpmValue = bpm.Value;
            colorR = setColor.Color.R;
            colorG = setColor.Color.G;
            colorB = setColor.Color.B;
        }

        private void gamemode_SelectedIndexChanged(object sender, EventArgs e)
        {
            Properties.Settings.Default.PreviousGame = gamemode.SelectedIndex;
            Properties.Settings.Default.Save();
        }
    }
}
