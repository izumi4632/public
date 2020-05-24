function main()
  for i = 1:10
    j = i - 1
    k = i + 1
    @show i^2 + j^2 + k^2
  end
end
main()
