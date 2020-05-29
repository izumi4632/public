if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n,m=pM(split(readline()))
  graph=[Int[] for i=1:n]
  for i=1:m;
    a,b=pM(split(readline()))
    push!(graph[a],b)
    push!(graph[b],a)
  end
  que=Int[1]
  mezirusi=zeros(Int,n)
  mezirusi[1]=1
  while !isempty(que)
    look=popfirst!(que)
    for next=graph[look]
      if mezirusi[next]!=0;continue;end
      mezirusi[next]=look+1
      push!(que,next)
    end
  end
  println("Yes")
  for i=mezirusi[2:end];println(i-1);end
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
