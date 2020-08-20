macro max!(a,b...); esc(:($a=max($a,$b...))); end
function main()
  i=2
  println(i)
  @max!(i,5,8+2))
  println(i)
end
main()