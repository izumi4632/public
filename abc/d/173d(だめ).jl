if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n=pI(readline())-1
  a=pM(split(readline()))
  u=sort(unique(a),rev=true)
  ans=0
  c=0
  for i=u
    kosuu=count(x->x==i,a)
    if c+kosuu>n
      ans+=(n-c)*i
      break
    else
      ans+=kosuu*i
      c+=kosuu
    end
  end
  println(ans)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end



