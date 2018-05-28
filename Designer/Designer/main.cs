using System;
using System.Windows.Forms;

namespace Designer
{
    public partial class mdi : Form
    {
        public static int selectedMdi;
        private static int dummy;

        public mdi()
        {
            InitializeComponent();
        }
        
        private void exit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void newLevel_Click(object sender, EventArgs e)
        {
            newDialog newFile = new newDialog();
            newFile.ShowDialog();
            if (newFile.DialogResult == DialogResult.OK)
            {
                switch (newDialog.gametype)
                {
                    case 0:
                        BeatEditor beatform = new BeatEditor();
                        beatform.MdiParent = this; beatform.Show();
                        beatform.Text = newDialog.levelname + " | Bit . Trip Beat";
                        BeatEditor.bpm = newDialog.bpmValue;
                        BeatEditor.r = newDialog.colorR;
                        BeatEditor.g = newDialog.colorG;
                        BeatEditor.b = newDialog.colorB;
                        break;
                }
            }
        }

        private void openLevel_Click(object sender, EventArgs e)
        {
            openFile.ShowDialog();
        }

        private void cascadeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.Cascade);
        }

        private void tileVerticalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.TileHorizontal);
        }

        private void tileHorizontalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.TileVertical);
        }

        private void openFile_FileOk(object sender, System.ComponentModel.CancelEventArgs e)
        {
            if (openFile.FileName != "")
            {
                if (openFile.SafeFileName.Contains(".btb") || openFile.FilterIndex == 0)
                {
                    BeatEditor beatform = new BeatEditor();
                    beatform.MdiParent = this; beatform.Show();
                    beatform.Text = " | Bit . Trip Beat";
                }
            }
        }

        private void showMdiChild(object sender, EventArgs e)
        {
            if (((ToolStripItem)sender).Owner.Items.IndexOf((ToolStripItem)sender) > 3)
            {
                MdiChildren[((ToolStripItem)sender).Owner.Items.IndexOf((ToolStripItem)sender)].BringToFront();
                MdiChildren[((ToolStripItem)sender).Owner.Items.IndexOf((ToolStripItem)sender)].Activate();
                MdiChildren[((ToolStripItem)sender).Owner.Items.IndexOf((ToolStripItem)sender)].Show();
                ActivateMdiChild(MdiChildren[((ToolStripItem)sender).Owner.Items.IndexOf((ToolStripItem)sender)]);
            }
        }

        private void onWindowsOpen(object sender, EventArgs e)
        {
            windows.DropDownItems.Clear();
            windows.DropDownItems.Add(cascadeWindow);
            windows.DropDownItems.Add(tileHorizontal);
            windows.DropDownItems.Add(tileVertical);
            windows.DropDownItems.Add(windowsSeparator);
            for (int i = 0; i < MdiChildren.Length; i++)
            { windows.DropDownItems.Add((i+1).ToString()+' '+MdiChildren[i].Text); windows.DropDownItems[i].Click += new EventHandler(showMdiChild); }
        }

        private void windows_DropDownItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void onWindowsClose(object sender, EventArgs e)
        {

        }
    }
}
