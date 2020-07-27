if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  k,a,b=pM(split(readline()))
  ans=1
  if b-a<=1; print(ans+k); return 0; end
  while k>0
    if ans+k<=a || k==1; ans+=k; k=0
    elseif ans<a; k-=a-ans; ans+=a-ans
    else; ans+=b-a; k-=2
    end
  end
  print(ans)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
