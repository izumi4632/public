if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function mkmaze(h,w)
  m=Array[]
  for i=1:h
    l=chomp(readline())
    l=Bool[j=='.' for j=l]
    push!(m,l)
  end
  return m
end
function bfsmaze(g,fx::Int,fy::Int)
  ←=[-1,0];↓=[0,-1];↑=[0,1];→=[1,0]
  h=length(g),w=length(g[1])
  q=Array[Int[fx,fy]]
  dist=zeros(Int,h,w)
  goto=zeros(Int,h,w)
  while !isempty(q)
    #v=popfirst!(q);
    v=splice!(q,1)
    for nv=g[v[1]][v[2]];
      if dist[nv]!=0; continue; end
      dist[nv]=dist[v]+1
      goto[nv]=v
      push!(q,nv)
    end
  end
  dist[f]=0;goto[f]=0
  return dist,goto
end
function main()
  h,w=pM(split(readline()))
  @show m=mkmaze(h,w)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
