namespace Designer
{
    partial class BeatEditor
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.ListViewItem listViewItem10 = new System.Windows.Forms.ListViewItem("Default", "YellowBeat.png");
            System.Windows.Forms.ListViewItem listViewItem11 = new System.Windows.Forms.ListViewItem("Orange", "OrangeBeat.png");
            System.Windows.Forms.ListViewItem listViewItem12 = new System.Windows.Forms.ListViewItem("Pink");
            System.Windows.Forms.ListViewItem listViewItem13 = new System.Windows.Forms.ListViewItem("Blue");
            System.Windows.Forms.ListViewItem listViewItem14 = new System.Windows.Forms.ListViewItem("Rainbow");
            System.Windows.Forms.ListViewItem listViewItem15 = new System.Windows.Forms.ListViewItem("Cyan (Bounce)", "CyanBeat.png");
            System.Windows.Forms.ListViewItem listViewItem16 = new System.Windows.Forms.ListViewItem("Cyan (Teleport)", "CyanBeat.png");
            System.Windows.Forms.ListViewItem listViewItem17 = new System.Windows.Forms.ListViewItem("Bright Yellow (Still)");
            System.Windows.Forms.ListViewItem listViewItem18 = new System.Windows.Forms.ListViewItem("Violet");
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(BeatEditor));
            this.Timeline = new System.Windows.Forms.Panel();
            this.statusStrip = new System.Windows.Forms.StatusStrip();
            this.timelineInfo = new System.Windows.Forms.ToolStripStatusLabel();
            this.timelineLength = new System.Windows.Forms.ToolStripProgressBar();
            this.timelineBar = new System.Windows.Forms.TrackBar();
            this.LibraryGame = new System.Windows.Forms.SplitContainer();
            this.LibraryTabs = new System.Windows.Forms.TabControl();
            this.BeatLibraryTab = new System.Windows.Forms.TabPage();
            this.BeatLibrary = new System.Windows.Forms.ListView();
            this.BeatLibraryTextures = new System.Windows.Forms.ImageList(this.components);
            this.EffectsLibrary = new System.Windows.Forms.TabPage();
            this.OtherLibraryTab = new System.Windows.Forms.TabPage();
            this.pause = new System.Windows.Forms.Button();
            this.play = new System.Windows.Forms.Button();
            this.TV = new System.Windows.Forms.Panel();
            this.previewLabel = new System.Windows.Forms.Label();
            this.timelineUpdate = new System.Windows.Forms.Timer(this.components);
            this.Timeline.SuspendLayout();
            this.statusStrip.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.timelineBar)).BeginInit();
            this.LibraryGame.Panel1.SuspendLayout();
            this.LibraryGame.Panel2.SuspendLayout();
            this.LibraryGame.SuspendLayout();
            this.LibraryTabs.SuspendLayout();
            this.BeatLibraryTab.SuspendLayout();
            this.SuspendLayout();
            // 
            // Timeline
            // 
            this.Timeline.AutoScroll = true;
            this.Timeline.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.Timeline.Controls.Add(this.statusStrip);
            this.Timeline.Controls.Add(this.timelineBar);
            this.Timeline.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.Timeline.Location = new System.Drawing.Point(0, 310);
            this.Timeline.Name = "Timeline";
            this.Timeline.Size = new System.Drawing.Size(671, 172);
            this.Timeline.TabIndex = 2;
            // 
            // statusStrip
            // 
            this.statusStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.timelineInfo,
            this.timelineLength});
            this.statusStrip.LayoutStyle = System.Windows.Forms.ToolStripLayoutStyle.Flow;
            this.statusStrip.Location = new System.Drawing.Point(0, 144);
            this.statusStrip.Name = "statusStrip";
            this.statusStrip.Size = new System.Drawing.Size(667, 24);
            this.statusStrip.TabIndex = 1;
            // 
            // timelineInfo
            // 
            this.timelineInfo.Name = "timelineInfo";
            this.timelineInfo.Size = new System.Drawing.Size(227, 19);
            this.timelineInfo.Text = "Time: n/a / n/a frames, n/a:n/a:n/a.n/a";
            // 
            // timelineLength
            // 
            this.timelineLength.Maximum = 600;
            this.timelineLength.Name = "timelineLength";
            this.timelineLength.Size = new System.Drawing.Size(100, 18);
            // 
            // timelineBar
            // 
            this.timelineBar.AutoSize = false;
            this.timelineBar.Location = new System.Drawing.Point(-2, -2);
            this.timelineBar.Maximum = 150;
            this.timelineBar.Name = "timelineBar";
            this.timelineBar.Size = new System.Drawing.Size(627, 32);
            this.timelineBar.TabIndex = 0;
            this.timelineBar.Scroll += new System.EventHandler(this.timelineBar_Scroll);
            // 
            // LibraryGame
            // 
            this.LibraryGame.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.LibraryGame.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.LibraryGame.Location = new System.Drawing.Point(0, 0);
            this.LibraryGame.Name = "LibraryGame";
            // 
            // LibraryGame.Panel1
            // 
            this.LibraryGame.Panel1.Controls.Add(this.LibraryTabs);
            // 
            // LibraryGame.Panel2
            // 
            this.LibraryGame.Panel2.Controls.Add(this.pause);
            this.LibraryGame.Panel2.Controls.Add(this.play);
            this.LibraryGame.Panel2.Controls.Add(this.TV);
            this.LibraryGame.Panel2.Controls.Add(this.previewLabel);
            this.LibraryGame.Size = new System.Drawing.Size(671, 306);
            this.LibraryGame.SplitterDistance = 278;
            this.LibraryGame.TabIndex = 3;
            // 
            // LibraryTabs
            // 
            this.LibraryTabs.Controls.Add(this.BeatLibraryTab);
            this.LibraryTabs.Controls.Add(this.EffectsLibrary);
            this.LibraryTabs.Controls.Add(this.OtherLibraryTab);
            this.LibraryTabs.Dock = System.Windows.Forms.DockStyle.Fill;
            this.LibraryTabs.Location = new System.Drawing.Point(0, 0);
            this.LibraryTabs.Name = "LibraryTabs";
            this.LibraryTabs.SelectedIndex = 0;
            this.LibraryTabs.Size = new System.Drawing.Size(274, 302);
            this.LibraryTabs.TabIndex = 1;
            // 
            // BeatLibraryTab
            // 
            this.BeatLibraryTab.Controls.Add(this.BeatLibrary);
            this.BeatLibraryTab.Location = new System.Drawing.Point(4, 22);
            this.BeatLibraryTab.Name = "BeatLibraryTab";
            this.BeatLibraryTab.Padding = new System.Windows.Forms.Padding(3);
            this.BeatLibraryTab.Size = new System.Drawing.Size(266, 276);
            this.BeatLibraryTab.TabIndex = 0;
            this.BeatLibraryTab.Text = "Beats";
            this.BeatLibraryTab.UseVisualStyleBackColor = true;
            // 
            // BeatLibrary
            // 
            this.BeatLibrary.Activation = System.Windows.Forms.ItemActivation.TwoClick;
            this.BeatLibrary.Alignment = System.Windows.Forms.ListViewAlignment.SnapToGrid;
            this.BeatLibrary.AutoArrange = false;
            this.BeatLibrary.BackColor = System.Drawing.Color.Silver;
            this.BeatLibrary.Dock = System.Windows.Forms.DockStyle.Fill;
            this.BeatLibrary.Items.AddRange(new System.Windows.Forms.ListViewItem[] {
            listViewItem10,
            listViewItem11,
            listViewItem12,
            listViewItem13,
            listViewItem14,
            listViewItem15,
            listViewItem16,
            listViewItem17,
            listViewItem18});
            this.BeatLibrary.LargeImageList = this.BeatLibraryTextures;
            this.BeatLibrary.Location = new System.Drawing.Point(3, 3);
            this.BeatLibrary.MultiSelect = false;
            this.BeatLibrary.Name = "BeatLibrary";
            this.BeatLibrary.Size = new System.Drawing.Size(260, 270);
            this.BeatLibrary.TabIndex = 0;
            this.BeatLibrary.TileSize = new System.Drawing.Size(16, 16);
            this.BeatLibrary.UseCompatibleStateImageBehavior = false;
            // 
            // BeatLibraryTextures
            // 
            this.BeatLibraryTextures.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("BeatLibraryTextures.ImageStream")));
            this.BeatLibraryTextures.TransparentColor = System.Drawing.Color.Transparent;
            this.BeatLibraryTextures.Images.SetKeyName(0, "YellowBeat.png");
            this.BeatLibraryTextures.Images.SetKeyName(1, "OrangeBeat.png");
            this.BeatLibraryTextures.Images.SetKeyName(2, "CyanBeat.png");
            // 
            // EffectsLibrary
            // 
            this.EffectsLibrary.Location = new System.Drawing.Point(4, 22);
            this.EffectsLibrary.Name = "EffectsLibrary";
            this.EffectsLibrary.Padding = new System.Windows.Forms.Padding(3);
            this.EffectsLibrary.Size = new System.Drawing.Size(266, 276);
            this.EffectsLibrary.TabIndex = 1;
            this.EffectsLibrary.Text = "Effects";
            this.EffectsLibrary.UseVisualStyleBackColor = true;
            // 
            // OtherLibraryTab
            // 
            this.OtherLibraryTab.Location = new System.Drawing.Point(4, 22);
            this.OtherLibraryTab.Name = "OtherLibraryTab";
            this.OtherLibraryTab.Padding = new System.Windows.Forms.Padding(3);
            this.OtherLibraryTab.Size = new System.Drawing.Size(266, 276);
            this.OtherLibraryTab.TabIndex = 2;
            this.OtherLibraryTab.Text = "Miscellaneous";
            this.OtherLibraryTab.UseVisualStyleBackColor = true;
            // 
            // pause
            // 
            this.pause.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
            this.pause.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.pause.Location = new System.Drawing.Point(200, 269);
            this.pause.Name = "pause";
            this.pause.Size = new System.Drawing.Size(27, 24);
            this.pause.TabIndex = 3;
            this.pause.Text = "| |";
            this.pause.UseVisualStyleBackColor = true;
            this.pause.Click += new System.EventHandler(this.pause_Click);
            // 
            // play
            // 
            this.play.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
            this.play.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.play.Location = new System.Drawing.Point(168, 269);
            this.play.Name = "play";
            this.play.Size = new System.Drawing.Size(26, 24);
            this.play.TabIndex = 2;
            this.play.Text = "►";
            this.play.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            this.play.UseVisualStyleBackColor = true;
            this.play.Click += new System.EventHandler(this.play_Click);
            // 
            // TV
            // 
            this.TV.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.TV.BackColor = System.Drawing.Color.Black;
            this.TV.BackgroundImage = global::Designer.Properties.Resources.View;
            this.TV.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.TV.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.TV.Location = new System.Drawing.Point(7, 26);
            this.TV.Name = "TV";
            this.TV.Size = new System.Drawing.Size(368, 240);
            this.TV.TabIndex = 1;
            // 
            // previewLabel
            // 
            this.previewLabel.AutoSize = true;
            this.previewLabel.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.previewLabel.Location = new System.Drawing.Point(3, 3);
            this.previewLabel.Name = "previewLabel";
            this.previewLabel.Size = new System.Drawing.Size(90, 19);
            this.previewLabel.TabIndex = 0;
            this.previewLabel.Text = "PREVIEW:";
            // 
            // timelineUpdate
            // 
            this.timelineUpdate.Enabled = true;
            this.timelineUpdate.Interval = 16;
            this.timelineUpdate.Tick += new System.EventHandler(this.timelineUpdate_Tick);
            // 
            // BeatEditor
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(671, 482);
            this.Controls.Add(this.LibraryGame);
            this.Controls.Add(this.Timeline);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "BeatEditor";
            this.Text = "New Level | Bit . Trip Beat";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.endEditor);
            this.Timeline.ResumeLayout(false);
            this.Timeline.PerformLayout();
            this.statusStrip.ResumeLayout(false);
            this.statusStrip.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.timelineBar)).EndInit();
            this.LibraryGame.Panel1.ResumeLayout(false);
            this.LibraryGame.Panel2.ResumeLayout(false);
            this.LibraryGame.Panel2.PerformLayout();
            this.LibraryGame.ResumeLayout(false);
            this.LibraryTabs.ResumeLayout(false);
            this.BeatLibraryTab.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel Timeline;
        private System.Windows.Forms.SplitContainer LibraryGame;
        private System.Windows.Forms.TabControl LibraryTabs;
        private System.Windows.Forms.TabPage BeatLibraryTab;
        private System.Windows.Forms.ListView BeatLibrary;
        private System.Windows.Forms.ImageList BeatLibraryTextures;
        private System.Windows.Forms.TabPage EffectsLibrary;
        private System.Windows.Forms.TabPage OtherLibraryTab;
        private System.Windows.Forms.Label previewLabel;
        private System.Windows.Forms.Panel TV;
        private System.Windows.Forms.StatusStrip statusStrip;
        private System.Windows.Forms.ToolStripStatusLabel timelineInfo;
        private System.Windows.Forms.ToolStripProgressBar timelineLength;
        private System.Windows.Forms.TrackBar timelineBar;
        private System.Windows.Forms.Button pause;
        private System.Windows.Forms.Button play;
        private System.Windows.Forms.Timer timelineUpdate;
    }
}