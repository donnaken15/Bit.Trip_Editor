namespace lvbrowse
{
    partial class main
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle8 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(main));
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle7 = new System.Windows.Forms.DataGridViewCellStyle();
            this.levellist = new System.Windows.Forms.DataGridView();
            this.gameType = new System.Windows.Forms.DataGridViewImageColumn();
            this.title = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.author = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dateTime = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.playLink = new System.Windows.Forms.DataGridViewButtonColumn();
            this.media = new System.Windows.Forms.DataGridViewLinkColumn();
            this.fSize = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.length = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.status = new System.Windows.Forms.StatusStrip();
            this.refreshButton = new System.Windows.Forms.ToolStripSplitButton();
            this.loadText = new System.Windows.Forms.ToolStripStatusLabel();
            ((System.ComponentModel.ISupportInitialize)(this.levellist)).BeginInit();
            this.status.SuspendLayout();
            this.SuspendLayout();
            // 
            // levellist
            // 
            this.levellist.AllowUserToAddRows = false;
            this.levellist.AllowUserToDeleteRows = false;
            this.levellist.AllowUserToResizeRows = false;
            this.levellist.BackgroundColor = System.Drawing.SystemColors.WindowFrame;
            this.levellist.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.levellist.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Sunken;
            this.levellist.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.levellist.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.gameType,
            this.title,
            this.author,
            this.dateTime,
            this.playLink,
            this.media,
            this.fSize,
            this.length});
            dataGridViewCellStyle8.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle8.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle8.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle8.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle8.NullValue = "UNKNOWN";
            dataGridViewCellStyle8.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle8.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle8.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.levellist.DefaultCellStyle = dataGridViewCellStyle8;
            this.levellist.Dock = System.Windows.Forms.DockStyle.Fill;
            this.levellist.EditMode = System.Windows.Forms.DataGridViewEditMode.EditProgrammatically;
            this.levellist.GridColor = System.Drawing.SystemColors.ControlDarkDark;
            this.levellist.Location = new System.Drawing.Point(0, 0);
            this.levellist.MultiSelect = false;
            this.levellist.Name = "levellist";
            this.levellist.ReadOnly = true;
            this.levellist.RowHeadersVisible = false;
            this.levellist.Size = new System.Drawing.Size(539, 406);
            this.levellist.TabIndex = 0;
            this.levellist.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataClick0);
            // 
            // gameType
            // 
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.ControlDark;
            dataGridViewCellStyle1.NullValue = ((object)(resources.GetObject("dataGridViewCellStyle1.NullValue")));
            this.gameType.DefaultCellStyle = dataGridViewCellStyle1;
            this.gameType.FillWeight = 1000F;
            this.gameType.HeaderText = "Game";
            this.gameType.Name = "gameType";
            this.gameType.ReadOnly = true;
            this.gameType.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.gameType.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.gameType.Width = 40;
            // 
            // title
            // 
            dataGridViewCellStyle2.NullValue = "Untitled";
            this.title.DefaultCellStyle = dataGridViewCellStyle2;
            this.title.HeaderText = "Title";
            this.title.MaxInputLength = 100;
            this.title.Name = "title";
            this.title.ReadOnly = true;
            this.title.Width = 96;
            // 
            // author
            // 
            dataGridViewCellStyle3.NullValue = "No one";
            this.author.DefaultCellStyle = dataGridViewCellStyle3;
            this.author.HeaderText = "Author";
            this.author.Name = "author";
            this.author.ReadOnly = true;
            this.author.Width = 76;
            // 
            // dateTime
            // 
            dataGridViewCellStyle4.NullValue = "May 27, 2018";
            this.dateTime.DefaultCellStyle = dataGridViewCellStyle4;
            this.dateTime.HeaderText = "Date";
            this.dateTime.Name = "dateTime";
            this.dateTime.ReadOnly = true;
            this.dateTime.Width = 74;
            // 
            // playLink
            // 
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle5.Format = "Play";
            dataGridViewCellStyle5.NullValue = "Play";
            this.playLink.DefaultCellStyle = dataGridViewCellStyle5;
            this.playLink.HeaderText = "Play";
            this.playLink.Name = "playLink";
            this.playLink.ReadOnly = true;
            this.playLink.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.playLink.Width = 30;
            // 
            // media
            // 
            this.media.HeaderText = "Media";
            this.media.Name = "media";
            this.media.ReadOnly = true;
            this.media.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.media.Width = 90;
            // 
            // fSize
            // 
            dataGridViewCellStyle6.NullValue = "0B";
            this.fSize.DefaultCellStyle = dataGridViewCellStyle6;
            this.fSize.HeaderText = "Size";
            this.fSize.Name = "fSize";
            this.fSize.ReadOnly = true;
            this.fSize.Width = 60;
            // 
            // length
            // 
            dataGridViewCellStyle7.NullValue = "0:00";
            this.length.DefaultCellStyle = dataGridViewCellStyle7;
            this.length.HeaderText = "Duration";
            this.length.Name = "length";
            this.length.ReadOnly = true;
            this.length.Width = 53;
            // 
            // status
            // 
            this.status.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.refreshButton,
            this.loadText});
            this.status.Location = new System.Drawing.Point(0, 382);
            this.status.Name = "status";
            this.status.Size = new System.Drawing.Size(539, 24);
            this.status.TabIndex = 1;
            this.status.Text = "statusStrip1";
            // 
            // refreshButton
            // 
            this.refreshButton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.refreshButton.DropDownButtonWidth = 0;
            this.refreshButton.Image = ((System.Drawing.Image)(resources.GetObject("refreshButton.Image")));
            this.refreshButton.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.refreshButton.Name = "refreshButton";
            this.refreshButton.Size = new System.Drawing.Size(21, 22);
            this.refreshButton.ToolTipText = "Refresh database";
            this.refreshButton.Click += new System.EventHandler(this.refreshBtn);
            // 
            // loadText
            // 
            this.loadText.Name = "loadText";
            this.loadText.Size = new System.Drawing.Size(53, 19);
            this.loadText.Text = "dummy";
            // 
            // main
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(539, 406);
            this.Controls.Add(this.status);
            this.Controls.Add(this.levellist);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "main";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "BIT . TRIP EDITOR Level Browser";
            ((System.ComponentModel.ISupportInitialize)(this.levellist)).EndInit();
            this.status.ResumeLayout(false);
            this.status.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView levellist;
        private System.Windows.Forms.StatusStrip status;
        private System.Windows.Forms.ToolStripStatusLabel loadText;
        private System.Windows.Forms.ToolStripSplitButton refreshButton;
        private System.Windows.Forms.DataGridViewImageColumn gameType;
        private System.Windows.Forms.DataGridViewTextBoxColumn title;
        private System.Windows.Forms.DataGridViewTextBoxColumn author;
        private System.Windows.Forms.DataGridViewTextBoxColumn dateTime;
        private System.Windows.Forms.DataGridViewButtonColumn playLink;
        private System.Windows.Forms.DataGridViewLinkColumn media;
        private System.Windows.Forms.DataGridViewTextBoxColumn fSize;
        private System.Windows.Forms.DataGridViewTextBoxColumn length;
    }
}

