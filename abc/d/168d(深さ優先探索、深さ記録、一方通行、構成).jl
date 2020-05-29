if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n,m=pM(split(readline()))
  g=[Int[] for i=1:n]
  for i=1:m;
    a,b=pM(split(readline()))
    push!(g[a],b)
    push!(g[b],a)
  end
  que=Int[1]
  depth=zeros(Int,n)
  depth[1]=1
  while !isempty(que)
    look=popfirst!(que)
    for next=g[look]
      if depth[next]==0
        depth[next]=look+1
        push!(que,next)
      end
    end
  end
  println("Yes")
  for i=depth[2:end];println(i-1);end
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
