if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
bits(n)=[[i+1 for i=0:n if b&(1<<i)!=0] for b=0:(1<<n)-1]
function main()
  h,w,k=pM(split(readline()))
  c=Array[Int64[i=='#' for i=chomp(readline())] for j=1:h]
  tate=bits(h);yoko=bits(w)
  ans=0
  for i=tate
    for j=yoko
      s=0
      for t=i
        for y=j
          s+= c[t][y]==1
        end
      end
      ans+= s==k
    end
  end
  println(ans)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
