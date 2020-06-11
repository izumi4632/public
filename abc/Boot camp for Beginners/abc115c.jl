if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n,k=pM(split(readline()))
  h=[pI(readline()) for i=1:n]
  sort!(h)
  println(minimum([h[i+k-1]-h[i] for i=1:n-k+1]))
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
