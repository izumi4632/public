if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function mkgraph(n::Int,m::Int)
  g=[Int[] for i=1:n]
  for i=1:m
    a,b=pM(split(readline()))
    push!(g[a],b); push!(g[b],a)
  end
  return g
end
function bfs(g,f,l)
  n=length(g)
  seen=zeros(Int,n)
  seen[f]=1
  q=Int[]
  dist=0
  for i=g[f];seen[i]=1;end
  for look=g[f]
    seen[look]=1
    for next=g[look]
      if seen[next]!=0;continue;end
      seen[next]=look
      push!(q,next)
    end
  end
  return q
end
function main()
  n,m=pM(split(readline()))
  g=mkgraph(n,m)
  for i=1:n; println(length(bfs(g,i,-1))); end
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
