a,b,h,m=parse.(BigFloat,split(readline()))
d=2*π*abs((h+m/60)/12-m/60)
print(sqrt(a^2+b^2-2*a*b*cos(d)))
