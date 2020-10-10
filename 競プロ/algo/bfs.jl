"""
vは初期条件
グラフ含め隣接点を得る関数nextを渡すのが汎用的なはず
goolは終了条件
"""
function bfs(v,next,gool)
  # 辞書に状態=>(距離,経路)、キューに探索予定を保存する
  d=Dict(v=>[0,v]); q=[v]
  while !isempty(q)
    # 状態を取り出しゴールなら辞書を返す
    v=popfirst!(q)
    gool(v) && (return d)
    # 未探索隣接点の距離と経路を保存しキューに追加する
    for n=next(v)
      haskey(d,n) && (continue)
      d[n]=[d[v][1]+1,v]
      push!(q,n) end end
  # 探索可能な状態が無くなったら辞書を返す
  return d
end

"""
短縮版
"""
function bfs(v,next,gool)
  d=Dict(v=>[0,v]); q=[v]
  while !isempty(q)
    v=popfirst!(q)
    gool(v) && (return d)
    for n=next(v)
      haskey(d,n) && (continue)
      d[n]=[d[v][1]+1,v]
      push!(q,n) end end
  return d
end