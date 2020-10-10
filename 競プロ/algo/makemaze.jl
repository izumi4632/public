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
next(m)=(v->[[v[1]+d[1],v[2]+d[2]] for d=[[-1,0],[1,0],[0,-1],[0,1]] if m[v[1]+d[1],v[2]+d[2]]])
"""
gool
"""
gool(g)=(v->v==g)