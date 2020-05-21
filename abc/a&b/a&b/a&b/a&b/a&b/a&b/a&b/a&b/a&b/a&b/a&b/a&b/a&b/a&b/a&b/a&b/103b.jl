function main()
  s=chomp(readline())
  t=chomp(readline())
  if s==t
    print("Yes")
    return 0
  end
  flag=any([t==s[i:end]*s[1:i-1] for i=2:length(s)])
  print(flag ? "Yes" : "No")
end
main()