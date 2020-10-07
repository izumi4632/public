"""
迷路問題の迷路をBool値の行列として作成する
"""
function makemaze(way,lines)
  h,w=length(lines),length(lines[1])
  maze=zeros(Bool,h,w)
  for i=1:h, j=1:w maze[i,j]=lines[i][j]==way end
  return maze
end

"""
makemazeを使用した際のbfsにおけるnext
バグった、たぶんx,yの順番とかがちがう？
"""
next(m)=(v->[(v[2]+dy,v[1]+dx) for dx=-1:1, dy=-1:1 if m[v[2]+dy,v[1]+dx] && !(dx==dy==0)])

"""
gool
"""
gool(g)=(v->v==g)