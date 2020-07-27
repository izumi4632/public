
# ぼくの実際の解答
# 読めなくていいけど気になるなら教えるよ
# 052A - Two Rectangles
a,b,c,d=map(int,input().split())
print(max(a*b,c*d))
# 034A - テスト
x,y=[int(i) for i in input().split()]
print("Better" if x<y else "Worse")
# 041A - 添字
s,i=open(0)
print(s[int(i)-1])



# 模範解答
# 052A - Two Rectangles
# 半角スペースで区切られた４つの数字を文字列(例えば "100 22 30 41" )として入力
s=input()
# 半角スペース「" "」で分割、ちなみに引数を省略しても同じ意味
l=s.split(" ")
# l のそれぞれの要素に関数 int を作用させる
# l=[int(l[0]), int(l[1]), int(l[2]), int(l[3])]と同じ意味
map(int,l)
# a, b, c, d に l の中身を代入する
a,b,c,d=l
# 四角形２つの面積をそれぞれ計算して S1、S2とする
S1=a*b
S2=c*d
# S1 が S2 より大きければ ans に S1 を入れる
if S1>=S2:
  ans=S1
# そうでなければ ans に S2 を入れる
else:
  ans=S2
# ansを出力
print(ans)




# 034A - テスト
# 上の問題の処理を一行でやっちゃった
# 読めなかったら上のと同じということだけ理解して下さい
x,y=map(int,input().split())
# もし y が x より大きいなら（点数が上がっていれば）ans に "Better" を入れる
if x<y:
  ans="Better"
# もしそれ以外なら（点数が上がっていなければ）ans に "Worse" を入れる
else:
  ans="Worse"
# ans を出力
print(ans)



# 041A - 添字
# s に一行目の文字列を入力
s=input()
# i に二行目の数字を入れる
i=int(input())
# s の最初は s[0] ！ マジで意味わからんが順番が人間語とずれるので i-1 番目を ans に入れる
ans=s[i-1]
#出力
print(ans)

#ｆくんのコード

# input().split() は ４つの要素を持つリストです
# a,b,x に ４つの数字（文字列）を代入しようとするとエラーを吐きます
# pythonちゃんは馬鹿なので、一行にある数字を２回の input() に分けることはできないのでした……
a,b,x=input().split()
# int(x) は x を文字列から数字にする関数です
# この場合は a=int(a) （だと思う）
a=int()
b=int()
# ここがこの問題の肝ですね、演算子 
# 難所は普通にできてて草
x=a*b
c,d,y=input().split()
c=int()
d=int()
y=b*c
if x>y:
	print(x)
# elif (条件): ←コロン の順番なので、正しくは
# elfi y>x:
elif:y>x
 	print(y)
# これでも全然いいんだけど、最初の条件を x>=y (xはy以上) にしてこれを含めてもいい
# 今まで出てきた条件以外全ては else: とできる 条件を書かなくていいから楽
elif:x=y
	print(x)

  ちなみにこの場合の30は x ではなく c だから、ｘ=a*b だけでいいかも