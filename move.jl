cd("C:\\Users\\Desktop\\doc\\public\\abc")
l=readdir()
for i=l
  if occursin("a",i) || occursin("b",i)
    src="./"*i
    dst="./a&b/"*i
    mv(src,dst)
  end
end