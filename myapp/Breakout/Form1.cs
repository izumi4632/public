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

namespace Breakout
{
    public partial class Form1 : Form
    {
        Vector ballPos;
        Vector ballSpeed;
        int ballRadius;
        Rectangle paddlePos;
        Rectangle blockPos;

        public Form1()
        {
            InitializeComponent();

            this.ballPos = new Vector(200, 200);
            this.ballSpeed = new Vector(-2, 4);
            this.ballRadius = 10;
            this.paddlePos = new Rectangle(100, this.Height - 50, 100, 5);
            this.blockPos = new Rectangle(100, 50, 80, 25);

            Timer timer = new Timer();
            timer.Interval = 33;
            timer.Tick += new EventHandler(Update);
            timer.Start();
        }
        double DotProduct(Vector a, Vector b)
        {
            return a.X * b.X + a.Y * b.Y; // 内積計算
        }

        bool LineVsCircle(Vector p1, Vector p2, Vector center, float radius)
        {
            Vector lineDir = (p2 - p1);                   // パドルの方向ベクトル
            Vector n = new Vector(lineDir.Y, -lineDir.X); // パドルの法線
            n.Normalize();

            Vector dir1 = center - p1;
            Vector dir2 = center - p2;

            double dist = Math.Abs(DotProduct(dir1, n));
            double a1 = DotProduct(dir1, lineDir);
            double a2 = DotProduct(dir2, lineDir);

            return (a1 * a2 < 0 && dist < radius) ? true : false;
        }

        int BlockVsCircle(Rectangle block, Vector ball)
        {
            if (LineVsCircle(new Vector(block.Left, block.Top),
                new Vector(block.Right, block.Top), ball, ballRadius))
                return 1;

            if (LineVsCircle(new Vector(block.Left, block.Bottom),
                new Vector(block.Right, block.Bottom), ball, ballRadius))
                return 2;

            if (LineVsCircle(new Vector(block.Right, block.Top),
                new Vector(block.Right, block.Bottom), ball, ballRadius))
                return 3;

            if (LineVsCircle(new Vector(block.Left, block.Top),
                new Vector(block.Left, block.Bottom), ball, ballRadius))
                return 4;

            return -1;
        }

        private void Update(object sender, EventArgs e)
        {
            // ボールの移動
            ballPos += ballSpeed;

            // 左右の壁でのバウンド
            if (ballPos.X + ballRadius > this.Bounds.Width || ballPos.X - ballRadius < 0)
            {
                ballSpeed.X *= -1;
            }

            // 上の壁でバウンド
            if (ballPos.Y - ballRadius < 0)
            {
                ballSpeed.Y *= -1;
            }

            // パドルのあたり判定
            if (LineVsCircle(new Vector(this.paddlePos.Left, this.paddlePos.Top),
                new Vector(this.paddlePos.Right, this.paddlePos.Top),
                ballPos, ballRadius))
            {
                ballSpeed.Y *= -1;
            }

            // ブロックとのあたり判定
            int collision = BlockVsCircle(blockPos, ballPos);
            if (collision == 1 || collision == 2)
            {
                ballSpeed.Y *= -1;
            }
            else if (collision == 3 || collision == 4)
            {
                ballSpeed.X *= -1;
            }

            // 再描画
            Invalidate();
        }

        private void Draw(object sender, PaintEventArgs e)
        {
            SolidBrush pinkbrush = new SolidBrush(Color.HotPink);
            SolidBrush grayBrush = new SolidBrush(Color.DimGray);
            SolidBrush blueBrush = new SolidBrush(Color.LightBlue);

            float px = (float)this.ballPos.X - ballRadius;
            float py = (float)this.ballPos.Y - ballRadius;

            e.Graphics.FillEllipse(pinkbrush, px, py, this.ballRadius * 2, this.ballRadius * 2);
            e.Graphics.FillRectangle(grayBrush, paddlePos);
            e.Graphics.FillRectangle(blueBrush, blockPos);
        }

        private void KeyPressed(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 'a') // Aキーが押されたとき
            {
                this.paddlePos.X -= 20;
            }
            else if (e.KeyChar == 's') // Sキーが押されたとき
            {
                this.paddlePos.X += 20;
            }
        }
    }
}