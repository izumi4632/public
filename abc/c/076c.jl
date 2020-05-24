function check(s::Char,t::Char)
    s==t || s=='?'
end
change(x::Char) = x=='?' ? 'a' : x
function main()
    s,t=chomp.(readlines())
    ans=String[]
    for start=1:length(s)-length(t)+1
        if all([check(s[i],t[i-start+1]) for i=start:start+length(t)-1])
            k= start==length(s)-length(t)+1 ? s[1:start-1]*t : s[1:start-1]*t*s[start+length(t):end]
            push!(ans,k)
        end
    end
    isempty(ans) ? print("UNRESTORABLE") : foreach(x->print(change(x)),minimum(ans))
end
main()
