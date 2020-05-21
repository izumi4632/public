s=chomp(readline())
ss=s[1:fld(length(s),2)]
function kai(s)
    l=length(s)
    return s[1:fld(l,2)]==s[end:-1:cld(l,2)+1] ? true: false
end
print(kai(s) && kai(ss)? "Yes": "No")