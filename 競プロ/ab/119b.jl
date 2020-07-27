if isfile("in.txt");mystdin=open("in.txt","r");redirect_stdin(mystdin);end
macro p(z);:((x->parse(Int,x)).(split($z)));end
f(s) = s == "BTC" ? 380000 : 1
function main()
  sum_money=0
  for i=1:parse(Int,readline())
    a,b=split(readline())
    sum_money+=parse(Float64,a)*f(b)
  end
  print(sum_money)
end
main()
close(mystdin)
