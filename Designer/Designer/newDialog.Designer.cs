namespace Designer
{
    partial class newDialog
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(newDialog));
            this.lvlName = new System.Windows.Forms.Label();
            this.nameLvl = new System.Windows.Forms.TextBox();
            this.loopLvl = new System.Windows.Forms.CheckBox();
            this.gamemode = new System.Windows.Forms.ComboBox();
            this.bgColorBTN = new System.Windows.Forms.Button();
            this.setColor = new System.Windows.Forms.ColorDialog();
            this.bpmLabel = new System.Windows.Forms.Label();
            this.bpm = new System.Windows.Forms.NumericUpDown();
            this.toolTip = new System.Windows.Forms.ToolTip(this.components);
            this.cancel = new System.Windows.Forms.Button();
            this.ok = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.bpm)).BeginInit();
            this.SuspendLayout();
            // 
            // lvlName
            // 
            this.lvlName.AutoSize = true;
            this.lvlName.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.lvlName.Location = new System.Drawing.Point(6, 8);
            this.lvlName.Name = "lvlName";
            this.lvlName.Size = new System.Drawing.Size(38, 39);
            this.lvlName.TabIndex = 0;
            this.lvlName.Text = "Name:\r\n\r\nGame:";
            // 
            // nameLvl
            // 
            this.nameLvl.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.nameLvl.Location = new System.Drawing.Point(47, 5);
            this.nameLvl.Name = "nameLvl";
            this.nameLvl.Size = new System.Drawing.Size(161, 20);
            this.nameLvl.TabIndex = 1;
            this.toolTip.SetToolTip(this.nameLvl, "Name your level.");
            // 
            // loopLvl
            // 
            this.loopLvl.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.loopLvl.Location = new System.Drawing.Point(130, 34);
            this.loopLvl.Name = "loopLvl";
            this.loopLvl.Size = new System.Drawing.Size(79, 17);
            this.loopLvl.TabIndex = 2;
            this.loopLvl.Text = "Loop Level";
            this.toolTip.SetToolTip(this.loopLvl, "Level will play continuously.");
            this.loopLvl.UseVisualStyleBackColor = true;
            // 
            // gamemode
            // 
            this.gamemode.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.gamemode.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.gamemode.FormattingEnabled = true;
            this.gamemode.Items.AddRange(new object[] {
            "Beat",
            "Core",
            "Void",
            "Runner",
            "Fate",
            "Flux"});
            this.gamemode.Location = new System.Drawing.Point(47, 32);
            this.gamemode.Name = "gamemode";
            this.gamemode.Size = new System.Drawing.Size(77, 21);
            this.gamemode.TabIndex = 3;
            this.toolTip.SetToolTip(this.gamemode, "Change game it\'s played on.");
            this.gamemode.SelectedIndexChanged += new System.EventHandler(this.gamemode_SelectedIndexChanged);
            // 
            // bgColorBTN
            // 
            this.bgColorBTN.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.bgColorBTN.Font = new System.Drawing.Font("Microsoft Sans Serif", 6.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bgColorBTN.Location = new System.Drawing.Point(8, 59);
            this.bgColorBTN.Name = "bgColorBTN";
            this.bgColorBTN.Size = new System.Drawing.Size(116, 23);
            this.bgColorBTN.TabIndex = 4;
            this.bgColorBTN.Text = "Set Background Color";
            this.toolTip.SetToolTip(this.bgColorBTN, "Set background color.");
            this.bgColorBTN.UseVisualStyleBackColor = true;
            this.bgColorBTN.Click += new System.EventHandler(this.bgColorBTN_Click);
            // 
            // setColor
            // 
            this.setColor.AnyColor = true;
            this.setColor.FullOpen = true;
            // 
            // bpmLabel
            // 
            this.bpmLabel.AutoSize = true;
            this.bpmLabel.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.bpmLabel.Location = new System.Drawing.Point(131, 63);
            this.bpmLabel.Name = "bpmLabel";
            this.bpmLabel.Size = new System.Drawing.Size(33, 13);
            this.bpmLabel.TabIndex = 5;
            this.bpmLabel.Text = "BPM:";
            this.toolTip.SetToolTip(this.bpmLabel, "Changes how many frames it takes for the MEGA colors to move. NOTE: 1 will not wo" +
        "rk.");
            // 
            // bpm
            // 
            this.bpm.Location = new System.Drawing.Point(164, 59);
            this.bpm.Maximum = new decimal(new int[] {
            1316134912,
            2328,
            0,
            0});
            this.bpm.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.bpm.Name = "bpm";
            this.bpm.Size = new System.Drawing.Size(44, 20);
            this.bpm.TabIndex = 6;
            this.toolTip.SetToolTip(this.bpm, "Changes how many frames it takes for the MEGA colors to move. NOTE: 1 will not wo" +
        "rk.");
            this.bpm.Value = new decimal(new int[] {
            60,
            0,
            0,
            0});
            // 
            // toolTip
            // 
            this.toolTip.IsBalloon = true;
            this.toolTip.ToolTipIcon = System.Windows.Forms.ToolTipIcon.Info;
            this.toolTip.ToolTipTitle = "Information";
            this.toolTip.UseAnimation = false;
            this.toolTip.UseFading = false;
            // 
            // cancel
            // 
            this.cancel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.cancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.cancel.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.cancel.Location = new System.Drawing.Point(151, 184);
            this.cancel.Name = "cancel";
            this.cancel.Size = new System.Drawing.Size(50, 23);
            this.cancel.TabIndex = 7;
            this.cancel.Text = "Cancel";
            this.cancel.UseVisualStyleBackColor = true;
            // 
            // ok
            // 
            this.ok.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.ok.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.ok.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.ok.Location = new System.Drawing.Point(97, 184);
            this.ok.Name = "ok";
            this.ok.Size = new System.Drawing.Size(48, 23);
            this.ok.TabIndex = 8;
            this.ok.Text = "Create";
            this.ok.UseVisualStyleBackColor = true;
            this.ok.Click += new System.EventHandler(this.ok_Click);
            // 
            // button1
            // 
            this.button1.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 6.5F);
            this.button1.Location = new System.Drawing.Point(8, 89);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(116, 23);
            this.button1.TabIndex = 9;
            this.button1.Text = "Set Background Music";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // newDialog
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(213, 219);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.ok);
            this.Controls.Add(this.cancel);
            this.Controls.Add(this.bpm);
            this.Controls.Add(this.bpmLabel);
            this.Controls.Add(this.bgColorBTN);
            this.Controls.Add(this.gamemode);
            this.Controls.Add(this.loopLvl);
            this.Controls.Add(this.nameLvl);
            this.Controls.Add(this.lvlName);
            this.DoubleBuffered = true;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "newDialog";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Create Level";
            ((System.ComponentModel.ISupportInitialize)(this.bpm)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lvlName;
        private System.Windows.Forms.TextBox nameLvl;
        private System.Windows.Forms.CheckBox loopLvl;
        private System.Windows.Forms.ComboBox gamemode;
        private System.Windows.Forms.Button bgColorBTN;
        private System.Windows.Forms.ColorDialog setColor;
        private System.Windows.Forms.Label bpmLabel;
        private System.Windows.Forms.NumericUpDown bpm;
        private System.Windows.Forms.ToolTip toolTip;
        private System.Windows.Forms.Button cancel;
        private System.Windows.Forms.Button ok;
        private System.Windows.Forms.Button button1;
    }
}