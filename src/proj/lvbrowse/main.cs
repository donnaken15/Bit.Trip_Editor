using System.Net;
using System.Windows.Forms;
using System.Xml;
using Ionic.Zip;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System;

namespace lvbrowse
{
    public partial class main : Form
    {
        WebClient WC = new WebClient();
        XmlNodeList levels;
        XmlDocument DB;
        string[] PlayButtons;
        string[] MediaLinks;
        DataGridViewRow newRow;
        Random random = new Random();
        string randId;

        public main()
        {
            InitializeComponent();
            refresh();
        }

        public void refresh()
        {
            levellist.Rows.Clear();
            loadText.Text = "Downloading database...";
            DB = new XmlDocument();
            DB.Load("https://raw.githubusercontent.com/donnaken15/Bit.Trip_Editor/levels/Community.xml");
            loadText.Text = "Creating list...";
            levels = DB.GetElementsByTagName("level");
            PlayButtons = new string[levels.Count];
            MediaLinks = new string[levels.Count];
            for (int i = 0; i < levels.Count; i++)
            {
                loadText.Text = "Creating list...("+i.ToString()+
                                    "/"+levels.Count.ToString()+")";
                newRow = new DataGridViewRow();
                newRow.CreateCells(levellist,
                    Properties.Resources.ResourceManager.GetObject("ico_" + levels[i].ChildNodes[0].InnerText), // icon
                    levels[i].ChildNodes[1].InnerText,
                    levels[i].ChildNodes[2].InnerText,
                    levels[i].ChildNodes[3].InnerText,
                    null, levels[i].ChildNodes[5].Attributes[0].Value,
                    levels[i].ChildNodes[6].InnerText,
                    levels[i].ChildNodes[7].InnerText
                    );
                levellist.Rows.Add(newRow);
                PlayButtons[i] = levels[i].ChildNodes[4].Attributes[0].Value;
                MediaLinks[i] = levels[i].ChildNodes[5].Attributes[0].Value;
            }
            loadText.Text = "Ready";
        }

        private void dataClick0(object sender, DataGridViewCellEventArgs e)
        {
            switch (e.ColumnIndex)
            {
                case 4:
                    randId = Convert.ToString(random.Next(),16);
                    string tmplevel = Path.GetTempPath() + "__BITTRIP_" + randId;
                    MessageBox.Show(PlayButtons[e.RowIndex]);
                    WC.Proxy = null;
                    WC.Headers.Add("user-agent", "Anything");
                    ServicePointManager.SecurityProtocol = (SecurityProtocolType)(0xc0 | 0x300 | 0xc00);
                    WC.DownloadFile(PlayButtons[e.RowIndex], tmplevel+".ZIP");
                    Directory.CreateDirectory(tmplevel);
                    using (ZipFile zipFile = new ZipFile(tmplevel+".ZIP"))
                        zipFile.ExtractAll(tmplevel, ExtractExistingFileAction.OverwriteSilently);
                    Process.Start(tmplevel + "\\Boxxle.btb");
                    //File.Delete(tmplevel + ".ZIP");
                    break;
                case 5:
                    Process.Start(MediaLinks[e.RowIndex]);
                    break;
            }
        }

        private void refreshBtn(object sender, EventArgs e)
        {
            refresh();
        }
    }
}
