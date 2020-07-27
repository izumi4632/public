if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
function main()
  n=parse(Int,readline())
  bucket=[0 for i=1:10^5]
  sum=0
  for i=parse.(Int,split(readline())); sum+=i; bucket[i]+=1;end
  q=parse(Int,readline())
  for i=1:q
    b,c=parse.(Int,split(readline()))
    sum+=bucket[b]*(c-b)
    bucket[c]+=bucket[b]
    bucket[b]=0
    println(sum);end
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
