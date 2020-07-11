if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
function f(n::Int)
  c=0
  while n!=0
    c+=1
    n=n%count_ones(n)
  end
  return c
end
function main()
  n=parse(Int,readline())
  s=chomp(readline())
  x=parse(Int,s,base=2)
  for i=1:n
    println(f(x+2^(n-i)*(-1)^(s[i]=='1')))
  end
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
