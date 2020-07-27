n=parse(Int,readline())
a=(x->parse(Int,x)).(split(readline()))
println(3^n-2^count(iseven,a))
