if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  a=pI(readline())
  b=pI(readline())
  c=pI(readline())
  x=pI(readline())
  ans=0
  for i=0:a
    for j=0:b
      for k=0:c
        if 500*i+100*j+50*k==x
          ans+=1
        end
      end
    end
  end
  println(ans)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
