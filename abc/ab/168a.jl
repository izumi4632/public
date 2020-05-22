s=parse(Int,readline())
s%=10
print(s==3 ? "bon" : s∈[0,1,6,8] ? "pon" : "hon")