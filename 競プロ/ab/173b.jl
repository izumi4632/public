if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n=pI(readline())
  ac=0
  wa=0
  tle=0
  re=0
  for i=1:n
    s=chomp(readline())
    if s=="AC"      ;ac+=1
    elseif s=="WA"  ;wa+=1
    elseif s=="TLE" ;tle+=1
    else            ;re+=1
    end
  end
  println("AC x $ac
WA x $wa
TLE x $tle
RE x $re
")
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
