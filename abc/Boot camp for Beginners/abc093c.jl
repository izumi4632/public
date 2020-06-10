if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  l=sort(pM(split(readline())))
  ans=0
  i=fld(l[3]-l[1],2)
  ans+=i
  l[1]+=2i
  j=fld(l[3]-l[2],2)
  ans+=j
  l[2]+=2j
  c=count(x->x==l[3],l)
  if c==1
    ans+=1
  elseif c==2
    ans+=2
  end
  println(ans)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
