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
        Rectangle blockPos1, blockPos2, blockPos3, blockPos4, blockPos5, blockPos6, blockPos7, blockPos8, blockPos9;
        bool flag1, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9;

        public Form1()
        {
            InitializeComponent();

            this.ballPos = new Vector(200, 400);
            this.ballSpeed = new Vector(-2, 4);
            this.ballRadius = 10;
            this.paddlePos = new Rectangle(100, this.Height - 50, 100, 5);
            this.blockPos1 = new Rectangle(5, 260, 150, 50);
            this.flag1 = true;
            this.blockPos2 = new Rectangle(165, 260, 150, 50);
            this.flag2 = true;
            this.blockPos3 = new Rectangle(325, 260, 150, 50);
            this.flag3 = true;
            this.blockPos4 = new Rectangle(5, 140, 150, 50);
            this.flag4 = true;
            this.blockPos5 = new Rectangle(165, 140, 150, 50);
            this.flag5 = true;
            this.blockPos6 = new Rectangle(325, 140, 150, 50);
            this.flag6 = true;
            this.blockPos7 = new Rectangle(5, 200, 150, 50);
            this.flag7 = true;
            this.blockPos8 = new Rectangle(165, 200, 150, 50);
            this.flag8 = true;
            this.blockPos9 = new Rectangle(325, 200, 150, 50);
            this.flag9 = true;

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
            int collision = BlockVsCircle(blockPos1, ballPos);
            if (flag1 && (collision == 1 || collision == 2))
            {
                ballSpeed.Y *= -1;
                flag1 = false;
            }
            else if (flag1 && (collision == 3 || collision == 4))
            {
                ballSpeed.X *= -1;
                flag1 = false;
            }
            int collision2 = BlockVsCircle(blockPos2, ballPos);
            if (flag2 && (collision2 == 1 || collision2 == 2))
            {
                ballSpeed.Y *= -1;
                flag2 = false;
            }
            else if (flag2 && (collision2 == 3 || collision2 == 4))
            {
                ballSpeed.X *= -1;
                flag2 = false;
            }
            int collision3 = BlockVsCircle(blockPos3, ballPos);
            if (flag3 && (collision3 == 1 || collision3 == 2))
            {
                ballSpeed.Y *= -1;
                flag3 = false;
            }
            else if (flag3 && (collision3 == 3 || collision3 == 4))
            {
                ballSpeed.X *= -1;
                flag3 = false;
            }
            int collision4 = BlockVsCircle(blockPos4, ballPos);
            if (flag4 && (collision4 == 1 || collision4 == 2))
            {
                ballSpeed.Y *= -1;
                flag4 = false;
            }
            else if (flag4 && (collision4 == 3 || collision4 == 4))
            {
                ballSpeed.X *= -1;
                flag4 = false;
            }
            int collision5 = BlockVsCircle(blockPos5, ballPos);
            if (flag5 && (collision5 == 1 || collision5 == 2))
            {
                ballSpeed.Y *= -1;
                flag5 = false;
            }
            else if (flag5 && (collision5 == 3 || collision5 == 4))
            {
                ballSpeed.X *= -1;
                flag5 = false;
            }
            int collision6 = BlockVsCircle(blockPos6, ballPos);
            if (flag6 && (collision6 == 1 || collision6 == 2))
            {
                ballSpeed.Y *= -1;
                flag6 = false;
            }
            else if (flag6 && (collision6 == 3 || collision6 == 4))
            {
                ballSpeed.X *= -1;
                flag6 = false;
            }
            int collision7 = BlockVsCircle(blockPos7, ballPos);
            if (flag7 && (collision7 == 1 || collision7 == 2))
            {
                ballSpeed.Y *= -1;
                flag7 = false;
            }
            else if (flag7 && (collision7 == 3 || collision7 == 4))
            {
                ballSpeed.X *= -1;
                flag7 = false;
            }
            int collision8 = BlockVsCircle(blockPos8, ballPos);
            if (flag8 && (collision8 == 1 || collision8 == 2))
            {
                ballSpeed.Y *= -1;
                flag8 = false;
            }
            else if (flag8 && (collision8 == 3 || collision8 == 4))
            {
                ballSpeed.X *= -1;
                flag8 = false;
            }
            int collision9 = BlockVsCircle(blockPos9, ballPos);
            if (flag9 && (collision9 == 1 || collision9 == 2))
            {
                ballSpeed.Y *= -1;
                flag9 = false;
            }
            else if (flag9 && (collision9 == 3 || collision9 == 4))
            {
                ballSpeed.X *= -1;
                flag9 = false;
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
            if (flag1)
            {
                e.Graphics.FillRectangle(blueBrush, blockPos1);
            }
            if (flag2)
            {
                e.Graphics.FillRectangle(blueBrush, blockPos2);
            }
            if (flag3)
            {
                e.Graphics.FillRectangle(blueBrush, blockPos3);
            }
            if (flag4)
            {
                e.Graphics.FillRectangle(blueBrush, blockPos4);
            }
            if (flag5)
            {
                e.Graphics.FillRectangle(blueBrush, blockPos5);
            }
            if (flag6)
            {
                e.Graphics.FillRectangle(blueBrush, blockPos6);
            }
            if (flag7)
            {
                e.Graphics.FillRectangle(blueBrush, blockPos7);
            }
            if (flag8)
            {
                e.Graphics.FillRectangle(blueBrush, blockPos8);
            }
            if (flag9)
            {
                e.Graphics.FillRectangle(blueBrush, blockPos9);
            }

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