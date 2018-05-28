namespace Designer
{
    partial class mdi
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(mdi));
            this.menubar = new System.Windows.Forms.MenuStrip();
            this.fileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.newLevel = new System.Windows.Forms.ToolStripMenuItem();
            this.openLevel = new System.Windows.Forms.ToolStripMenuItem();
            this.saveLevel = new System.Windows.Forms.ToolStripMenuItem();
            this.saveAs = new System.Windows.Forms.ToolStripMenuItem();
            this.Separator = new System.Windows.Forms.ToolStripSeparator();
            this.optionsBtn = new System.Windows.Forms.ToolStripMenuItem();
            this.exit = new System.Windows.Forms.ToolStripMenuItem();
            this.editToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cutToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.copyToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.pasteToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.undoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.redoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.levelSettingsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.insertToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.beatsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.normalToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.orangeToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.pinkToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.blueToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.rainbowToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cyanBounceToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cyanTeleportToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.brightYellowStillToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.violetToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.effectsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.miscZToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.deleteToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.viewToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.playResumeToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.pauseToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.skipToBeginningToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.skipToEndToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.rewindToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.fastforwardToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.gameToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.playtestLevelToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.windows = new System.Windows.Forms.ToolStripMenuItem();
            this.cascadeWindow = new System.Windows.Forms.ToolStripMenuItem();
            this.tileVertical = new System.Windows.Forms.ToolStripMenuItem();
            this.tileHorizontal = new System.Windows.Forms.ToolStripMenuItem();
            this.windowsSeparator = new System.Windows.Forms.ToolStripSeparator();
            this.helpToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.aboutToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.guideToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.statusBarGlobal = new System.Windows.Forms.StatusStrip();
            this.statusText = new System.Windows.Forms.ToolStripStatusLabel();
            this.toolStripProgressBar1 = new System.Windows.Forms.ToolStripProgressBar();
            this.openFile = new System.Windows.Forms.OpenFileDialog();
            this.saveFile = new System.Windows.Forms.SaveFileDialog();
            this.menubar.SuspendLayout();
            this.statusBarGlobal.SuspendLayout();
            this.SuspendLayout();
            // 
            // menubar
            // 
            this.menubar.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.fileToolStripMenuItem,
            this.editToolStripMenuItem,
            this.viewToolStripMenuItem,
            this.gameToolStripMenuItem,
            this.windows,
            this.helpToolStripMenuItem});
            this.menubar.Location = new System.Drawing.Point(0, 0);
            this.menubar.Name = "menubar";
            this.menubar.RenderMode = System.Windows.Forms.ToolStripRenderMode.System;
            this.menubar.Size = new System.Drawing.Size(934, 27);
            this.menubar.TabIndex = 1;
            this.menubar.Text = "MENU.BAR";
            // 
            // fileToolStripMenuItem
            // 
            this.fileToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.newLevel,
            this.openLevel,
            this.saveLevel,
            this.saveAs,
            this.Separator,
            this.optionsBtn,
            this.exit});
            this.fileToolStripMenuItem.Name = "fileToolStripMenuItem";
            this.fileToolStripMenuItem.Size = new System.Drawing.Size(43, 23);
            this.fileToolStripMenuItem.Text = "&File";
            // 
            // newLevel
            // 
            this.newLevel.Image = global::Designer.Properties.Resources._1;
            this.newLevel.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
            this.newLevel.Name = "newLevel";
            this.newLevel.ShortcutKeyDisplayString = "Ctrl+N";
            this.newLevel.Size = new System.Drawing.Size(227, 28);
            this.newLevel.Text = "&New";
            this.newLevel.Click += new System.EventHandler(this.newLevel_Click);
            // 
            // openLevel
            // 
            this.openLevel.Image = global::Designer.Properties.Resources._3;
            this.openLevel.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.openLevel.Name = "openLevel";
            this.openLevel.ShortcutKeyDisplayString = "Ctrl+O";
            this.openLevel.Size = new System.Drawing.Size(227, 28);
            this.openLevel.Text = "&Open";
            this.openLevel.Click += new System.EventHandler(this.openLevel_Click);
            // 
            // saveLevel
            // 
            this.saveLevel.Image = global::Designer.Properties.Resources._2;
            this.saveLevel.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
            this.saveLevel.Name = "saveLevel";
            this.saveLevel.ShortcutKeyDisplayString = "Ctrl+S";
            this.saveLevel.Size = new System.Drawing.Size(227, 28);
            this.saveLevel.Text = "&Save";
            // 
            // saveAs
            // 
            this.saveAs.Image = global::Designer.Properties.Resources._2;
            this.saveAs.Name = "saveAs";
            this.saveAs.ShortcutKeyDisplayString = "Ctrl+Shift+S";
            this.saveAs.Size = new System.Drawing.Size(227, 28);
            this.saveAs.Text = "Save &as...";
            // 
            // Separator
            // 
            this.Separator.Name = "Separator";
            this.Separator.Size = new System.Drawing.Size(224, 6);
            // 
            // optionsBtn
            // 
            this.optionsBtn.Name = "optionsBtn";
            this.optionsBtn.ShortcutKeyDisplayString = "Ctrl+U";
            this.optionsBtn.Size = new System.Drawing.Size(227, 28);
            this.optionsBtn.Text = "&Options";
            // 
            // exit
            // 
            this.exit.Image = global::Designer.Properties.Resources.exit;
            this.exit.Name = "exit";
            this.exit.ShortcutKeyDisplayString = "Alt+F4";
            this.exit.Size = new System.Drawing.Size(227, 28);
            this.exit.Text = "E&xit";
            this.exit.Click += new System.EventHandler(this.exit_Click);
            // 
            // editToolStripMenuItem
            // 
            this.editToolStripMenuItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text;
            this.editToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.cutToolStripMenuItem,
            this.copyToolStripMenuItem,
            this.pasteToolStripMenuItem,
            this.toolStripSeparator1,
            this.undoToolStripMenuItem,
            this.redoToolStripMenuItem,
            this.toolStripSeparator2,
            this.levelSettingsToolStripMenuItem,
            this.insertToolStripMenuItem,
            this.deleteToolStripMenuItem});
            this.editToolStripMenuItem.Name = "editToolStripMenuItem";
            this.editToolStripMenuItem.Size = new System.Drawing.Size(45, 23);
            this.editToolStripMenuItem.Text = "&Edit";
            // 
            // cutToolStripMenuItem
            // 
            this.cutToolStripMenuItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text;
            this.cutToolStripMenuItem.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
            this.cutToolStripMenuItem.Name = "cutToolStripMenuItem";
            this.cutToolStripMenuItem.ShortcutKeyDisplayString = "Ctrl+X";
            this.cutToolStripMenuItem.Size = new System.Drawing.Size(212, 24);
            this.cutToolStripMenuItem.Text = "C&ut";
            this.cutToolStripMenuItem.TextImageRelation = System.Windows.Forms.TextImageRelation.TextAboveImage;
            // 
            // copyToolStripMenuItem
            // 
            this.copyToolStripMenuItem.Name = "copyToolStripMenuItem";
            this.copyToolStripMenuItem.ShortcutKeyDisplayString = "Ctrl+C";
            this.copyToolStripMenuItem.Size = new System.Drawing.Size(212, 24);
            this.copyToolStripMenuItem.Text = "&Copy";
            // 
            // pasteToolStripMenuItem
            // 
            this.pasteToolStripMenuItem.Name = "pasteToolStripMenuItem";
            this.pasteToolStripMenuItem.ShortcutKeyDisplayString = "Ctrl+V";
            this.pasteToolStripMenuItem.Size = new System.Drawing.Size(212, 24);
            this.pasteToolStripMenuItem.Text = "&Paste";
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(209, 6);
            // 
            // undoToolStripMenuItem
            // 
            this.undoToolStripMenuItem.Name = "undoToolStripMenuItem";
            this.undoToolStripMenuItem.ShortcutKeyDisplayString = "Ctrl+Z";
            this.undoToolStripMenuItem.Size = new System.Drawing.Size(212, 24);
            this.undoToolStripMenuItem.Text = "&Undo";
            // 
            // redoToolStripMenuItem
            // 
            this.redoToolStripMenuItem.Name = "redoToolStripMenuItem";
            this.redoToolStripMenuItem.ShortcutKeyDisplayString = "Ctrl+Y";
            this.redoToolStripMenuItem.Size = new System.Drawing.Size(212, 24);
            this.redoToolStripMenuItem.Text = "&Redo";
            // 
            // toolStripSeparator2
            // 
            this.toolStripSeparator2.Name = "toolStripSeparator2";
            this.toolStripSeparator2.Size = new System.Drawing.Size(209, 6);
            // 
            // levelSettingsToolStripMenuItem
            // 
            this.levelSettingsToolStripMenuItem.Name = "levelSettingsToolStripMenuItem";
            this.levelSettingsToolStripMenuItem.ShortcutKeyDisplayString = "Ctrl+L";
            this.levelSettingsToolStripMenuItem.Size = new System.Drawing.Size(212, 24);
            this.levelSettingsToolStripMenuItem.Text = "&Level Settings";
            // 
            // insertToolStripMenuItem
            // 
            this.insertToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.beatsToolStripMenuItem,
            this.effectsToolStripMenuItem,
            this.miscZToolStripMenuItem});
            this.insertToolStripMenuItem.Name = "insertToolStripMenuItem";
            this.insertToolStripMenuItem.ShortcutKeyDisplayString = "Ins";
            this.insertToolStripMenuItem.Size = new System.Drawing.Size(212, 24);
            this.insertToolStripMenuItem.Text = "&Insert";
            this.insertToolStripMenuItem.TextImageRelation = System.Windows.Forms.TextImageRelation.Overlay;
            // 
            // beatsToolStripMenuItem
            // 
            this.beatsToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.normalToolStripMenuItem,
            this.orangeToolStripMenuItem,
            this.pinkToolStripMenuItem,
            this.blueToolStripMenuItem,
            this.rainbowToolStripMenuItem,
            this.cyanBounceToolStripMenuItem,
            this.cyanTeleportToolStripMenuItem,
            this.brightYellowStillToolStripMenuItem,
            this.violetToolStripMenuItem});
            this.beatsToolStripMenuItem.Name = "beatsToolStripMenuItem";
            this.beatsToolStripMenuItem.Size = new System.Drawing.Size(119, 24);
            this.beatsToolStripMenuItem.Text = "Beats";
            // 
            // normalToolStripMenuItem
            // 
            this.normalToolStripMenuItem.Name = "normalToolStripMenuItem";
            this.normalToolStripMenuItem.Size = new System.Drawing.Size(194, 24);
            this.normalToolStripMenuItem.Text = "Normal";
            // 
            // orangeToolStripMenuItem
            // 
            this.orangeToolStripMenuItem.Name = "orangeToolStripMenuItem";
            this.orangeToolStripMenuItem.Size = new System.Drawing.Size(194, 24);
            this.orangeToolStripMenuItem.Text = "Orange";
            // 
            // pinkToolStripMenuItem
            // 
            this.pinkToolStripMenuItem.Name = "pinkToolStripMenuItem";
            this.pinkToolStripMenuItem.Size = new System.Drawing.Size(194, 24);
            this.pinkToolStripMenuItem.Text = "Pink";
            // 
            // blueToolStripMenuItem
            // 
            this.blueToolStripMenuItem.Name = "blueToolStripMenuItem";
            this.blueToolStripMenuItem.Size = new System.Drawing.Size(194, 24);
            this.blueToolStripMenuItem.Text = "Blue";
            // 
            // rainbowToolStripMenuItem
            // 
            this.rainbowToolStripMenuItem.Name = "rainbowToolStripMenuItem";
            this.rainbowToolStripMenuItem.Size = new System.Drawing.Size(194, 24);
            this.rainbowToolStripMenuItem.Text = "Rainbow";
            // 
            // cyanBounceToolStripMenuItem
            // 
            this.cyanBounceToolStripMenuItem.Name = "cyanBounceToolStripMenuItem";
            this.cyanBounceToolStripMenuItem.Size = new System.Drawing.Size(194, 24);
            this.cyanBounceToolStripMenuItem.Text = "Cyan (Bounce)";
            // 
            // cyanTeleportToolStripMenuItem
            // 
            this.cyanTeleportToolStripMenuItem.Name = "cyanTeleportToolStripMenuItem";
            this.cyanTeleportToolStripMenuItem.Size = new System.Drawing.Size(194, 24);
            this.cyanTeleportToolStripMenuItem.Text = "Cyan (Teleport)";
            // 
            // brightYellowStillToolStripMenuItem
            // 
            this.brightYellowStillToolStripMenuItem.Name = "brightYellowStillToolStripMenuItem";
            this.brightYellowStillToolStripMenuItem.Size = new System.Drawing.Size(194, 24);
            this.brightYellowStillToolStripMenuItem.Text = "Bright Yellow (Still)";
            // 
            // violetToolStripMenuItem
            // 
            this.violetToolStripMenuItem.Name = "violetToolStripMenuItem";
            this.violetToolStripMenuItem.Size = new System.Drawing.Size(194, 24);
            this.violetToolStripMenuItem.Text = "Violet";
            // 
            // effectsToolStripMenuItem
            // 
            this.effectsToolStripMenuItem.Name = "effectsToolStripMenuItem";
            this.effectsToolStripMenuItem.Size = new System.Drawing.Size(119, 24);
            this.effectsToolStripMenuItem.Text = "Effects";
            // 
            // miscZToolStripMenuItem
            // 
            this.miscZToolStripMenuItem.Name = "miscZToolStripMenuItem";
            this.miscZToolStripMenuItem.Size = new System.Drawing.Size(119, 24);
            this.miscZToolStripMenuItem.Text = "Misc.";
            // 
            // deleteToolStripMenuItem
            // 
            this.deleteToolStripMenuItem.Name = "deleteToolStripMenuItem";
            this.deleteToolStripMenuItem.ShortcutKeyDisplayString = "Del";
            this.deleteToolStripMenuItem.Size = new System.Drawing.Size(212, 24);
            this.deleteToolStripMenuItem.Text = "&Delete";
            // 
            // viewToolStripMenuItem
            // 
            this.viewToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.playResumeToolStripMenuItem,
            this.pauseToolStripMenuItem,
            this.skipToBeginningToolStripMenuItem,
            this.skipToEndToolStripMenuItem,
            this.rewindToolStripMenuItem,
            this.fastforwardToolStripMenuItem});
            this.viewToolStripMenuItem.Name = "viewToolStripMenuItem";
            this.viewToolStripMenuItem.Size = new System.Drawing.Size(52, 23);
            this.viewToolStripMenuItem.Text = "&View";
            // 
            // playResumeToolStripMenuItem
            // 
            this.playResumeToolStripMenuItem.Name = "playResumeToolStripMenuItem";
            this.playResumeToolStripMenuItem.Size = new System.Drawing.Size(184, 24);
            this.playResumeToolStripMenuItem.Text = "Play/Resume";
            // 
            // pauseToolStripMenuItem
            // 
            this.pauseToolStripMenuItem.Name = "pauseToolStripMenuItem";
            this.pauseToolStripMenuItem.Size = new System.Drawing.Size(184, 24);
            this.pauseToolStripMenuItem.Text = "Pause";
            // 
            // skipToBeginningToolStripMenuItem
            // 
            this.skipToBeginningToolStripMenuItem.Name = "skipToBeginningToolStripMenuItem";
            this.skipToBeginningToolStripMenuItem.Size = new System.Drawing.Size(184, 24);
            this.skipToBeginningToolStripMenuItem.Text = "Skip to Beginning";
            // 
            // skipToEndToolStripMenuItem
            // 
            this.skipToEndToolStripMenuItem.Name = "skipToEndToolStripMenuItem";
            this.skipToEndToolStripMenuItem.Size = new System.Drawing.Size(184, 24);
            this.skipToEndToolStripMenuItem.Text = "Skip to End";
            // 
            // rewindToolStripMenuItem
            // 
            this.rewindToolStripMenuItem.Name = "rewindToolStripMenuItem";
            this.rewindToolStripMenuItem.Size = new System.Drawing.Size(184, 24);
            this.rewindToolStripMenuItem.Text = "Rewind";
            // 
            // fastforwardToolStripMenuItem
            // 
            this.fastforwardToolStripMenuItem.Name = "fastforwardToolStripMenuItem";
            this.fastforwardToolStripMenuItem.Size = new System.Drawing.Size(184, 24);
            this.fastforwardToolStripMenuItem.Text = "Fastforward";
            // 
            // gameToolStripMenuItem
            // 
            this.gameToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.playtestLevelToolStripMenuItem});
            this.gameToolStripMenuItem.Name = "gameToolStripMenuItem";
            this.gameToolStripMenuItem.Size = new System.Drawing.Size(57, 23);
            this.gameToolStripMenuItem.Text = "&Game";
            // 
            // playtestLevelToolStripMenuItem
            // 
            this.playtestLevelToolStripMenuItem.Name = "playtestLevelToolStripMenuItem";
            this.playtestLevelToolStripMenuItem.Size = new System.Drawing.Size(162, 24);
            this.playtestLevelToolStripMenuItem.Text = "Playtest Level";
            // 
            // windows
            // 
            this.windows.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.cascadeWindow,
            this.tileVertical,
            this.tileHorizontal,
            this.windowsSeparator});
            this.windows.Name = "windows";
            this.windows.Size = new System.Drawing.Size(78, 23);
            this.windows.Text = "&Windows";
            this.windows.DropDownClosed += new System.EventHandler(this.onWindowsClose);
            this.windows.DropDownOpening += new System.EventHandler(this.onWindowsOpen);
            this.windows.DropDownItemClicked += new System.Windows.Forms.ToolStripItemClickedEventHandler(this.windows_DropDownItemClicked);
            // 
            // cascadeWindow
            // 
            this.cascadeWindow.Name = "cascadeWindow";
            this.cascadeWindow.Size = new System.Drawing.Size(165, 24);
            this.cascadeWindow.Text = "&Cascade";
            this.cascadeWindow.Click += new System.EventHandler(this.cascadeToolStripMenuItem_Click);
            // 
            // tileVertical
            // 
            this.tileVertical.Name = "tileVertical";
            this.tileVertical.Size = new System.Drawing.Size(165, 24);
            this.tileVertical.Text = "Tile &Vertical";
            this.tileVertical.Click += new System.EventHandler(this.tileVerticalToolStripMenuItem_Click);
            // 
            // tileHorizontal
            // 
            this.tileHorizontal.Name = "tileHorizontal";
            this.tileHorizontal.Size = new System.Drawing.Size(165, 24);
            this.tileHorizontal.Text = "Tile &Horizontal";
            this.tileHorizontal.Click += new System.EventHandler(this.tileHorizontalToolStripMenuItem_Click);
            // 
            // windowsSeparator
            // 
            this.windowsSeparator.Name = "windowsSeparator";
            this.windowsSeparator.Size = new System.Drawing.Size(162, 6);
            // 
            // helpToolStripMenuItem
            // 
            this.helpToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.aboutToolStripMenuItem,
            this.guideToolStripMenuItem});
            this.helpToolStripMenuItem.Name = "helpToolStripMenuItem";
            this.helpToolStripMenuItem.Size = new System.Drawing.Size(50, 23);
            this.helpToolStripMenuItem.Text = "&Help";
            // 
            // aboutToolStripMenuItem
            // 
            this.aboutToolStripMenuItem.Name = "aboutToolStripMenuItem";
            this.aboutToolStripMenuItem.Size = new System.Drawing.Size(152, 24);
            this.aboutToolStripMenuItem.Text = "About";
            // 
            // guideToolStripMenuItem
            // 
            this.guideToolStripMenuItem.Name = "guideToolStripMenuItem";
            this.guideToolStripMenuItem.Size = new System.Drawing.Size(152, 24);
            this.guideToolStripMenuItem.Text = "Guide";
            // 
            // statusBarGlobal
            // 
            this.statusBarGlobal.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.statusText,
            this.toolStripProgressBar1});
            this.statusBarGlobal.Location = new System.Drawing.Point(0, 652);
            this.statusBarGlobal.Name = "statusBarGlobal";
            this.statusBarGlobal.Size = new System.Drawing.Size(934, 24);
            this.statusBarGlobal.TabIndex = 3;
            this.statusBarGlobal.Text = "statusStrip";
            // 
            // statusText
            // 
            this.statusText.Name = "statusText";
            this.statusText.Size = new System.Drawing.Size(48, 19);
            this.statusText.Text = "Ready";
            // 
            // toolStripProgressBar1
            // 
            this.toolStripProgressBar1.Name = "toolStripProgressBar1";
            this.toolStripProgressBar1.Size = new System.Drawing.Size(100, 18);
            // 
            // openFile
            // 
            this.openFile.Filter = "Beat|*.btb|Core|*.btc|Void|*.btv|Runner|*.btr|Fate|*.btf|Flux|*.btz";
            this.openFile.Multiselect = true;
            this.openFile.RestoreDirectory = true;
            this.openFile.SupportMultiDottedExtensions = true;
            this.openFile.Title = "Open Level";
            this.openFile.FileOk += new System.ComponentModel.CancelEventHandler(this.openFile_FileOk);
            // 
            // saveFile
            // 
            this.saveFile.Filter = "Beat|*.btb|Core|*.btc|Void|*.btv|Runner|*.btr|Fate|*.btf|Flux|*.btz";
            this.saveFile.RestoreDirectory = true;
            this.saveFile.Title = "Where Should This Go?";
            // 
            // mdi
            // 
            this.AllowDrop = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(934, 676);
            this.Controls.Add(this.statusBarGlobal);
            this.Controls.Add(this.menubar);
            this.DoubleBuffered = true;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menubar;
            this.Name = "mdi";
            this.ShowIcon = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Bit . Trip Editor | Level Studio";
            this.menubar.ResumeLayout(false);
            this.menubar.PerformLayout();
            this.statusBarGlobal.ResumeLayout(false);
            this.statusBarGlobal.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menubar;
        private System.Windows.Forms.ToolStripMenuItem fileToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem newLevel;
        private System.Windows.Forms.ToolStripMenuItem openLevel;
        private System.Windows.Forms.ToolStripMenuItem saveLevel;
        private System.Windows.Forms.ToolStripMenuItem saveAs;
        private System.Windows.Forms.ToolStripMenuItem editToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem viewToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator Separator;
        private System.Windows.Forms.ToolStripMenuItem optionsBtn;
        private System.Windows.Forms.ToolStripMenuItem exit;
        private System.Windows.Forms.ToolStripMenuItem cutToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem gameToolStripMenuItem;
        private System.Windows.Forms.StatusStrip statusBarGlobal;
        private System.Windows.Forms.OpenFileDialog openFile;
        private System.Windows.Forms.ToolStripMenuItem windows;
        private System.Windows.Forms.ToolStripMenuItem helpToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem copyToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem pasteToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripMenuItem undoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem redoToolStripMenuItem;
        private System.Windows.Forms.ToolStripStatusLabel statusText;
        private System.Windows.Forms.ToolStripProgressBar toolStripProgressBar1;
        private System.Windows.Forms.SaveFileDialog saveFile;
        private System.Windows.Forms.ToolStripMenuItem cascadeWindow;
        private System.Windows.Forms.ToolStripMenuItem aboutToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem guideToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem tileVertical;
        private System.Windows.Forms.ToolStripMenuItem tileHorizontal;
        private System.Windows.Forms.ToolStripSeparator windowsSeparator;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.ToolStripMenuItem levelSettingsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem insertToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem beatsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem normalToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem orangeToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem effectsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem miscZToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem playResumeToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem pauseToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem skipToBeginningToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem skipToEndToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem rewindToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem fastforwardToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem playtestLevelToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem pinkToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem blueToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem rainbowToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem cyanBounceToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem cyanTeleportToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem brightYellowStillToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem violetToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem deleteToolStripMenuItem;
    }
}

