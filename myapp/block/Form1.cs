using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows;

namespace block
{
    public partial class Form1 : Form
    {
        Vector ballPos;
        Vector ballSpeed;
        int ballRadius;

        public Form1()
        {
            InitializeComponent();

            this.ballPos = new Vector(200, 200);
            this.ballSpeed = new Vector(-2, -4);
            this.ballRadius = 10;

            Timer timer = new Timer();
            timer.Interval = 33;
            timer.Tick += new EventHandler(Update);
            timer.Start();
        }

        private void Update(object sender, EventArgs e)
        {
            // ボールの移動
            ballPos += ballSpeed;

            // 再描画
            Invalidate();
        }

        private void Draw(object sender, PaintEventArgs e)
        {
            SolidBrush pinkBrush = new SolidBrush(Color.HotPink);

            float px = (float)this.ballPos.X - ballRadius;
            float py = (float)this.ballPos.Y - ballRadius;

            e.Graphics.FillEllipse(pinkBrush, px, py, this.ballRadius * 2, this.ballRadius * 2);
        }
    }
}
