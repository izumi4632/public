if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function isprime(n)
  for i = 2:Int(floor(sqrt(n)))
    if n % i == 0
      return false
    end
  end
  return true
end
function main()
  println(isprime(pI(readline())) ? "YES" : "NO")
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
