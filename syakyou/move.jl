cd("C:\\Users\\izumi\\Desktop\\doc\\public\\abc")
l=readdir()
for i=l
  if !occursin("bit",i) && (occursin("a",i) || occursin("b",i))
    src="C:\\Users\\izumi\\Desktop\\doc\\public\\abc\\"*i
    dst="C:\\Users\\izumi\\Desktop\\doc\\public\\abc\\a&b\\"*i
    mv(src,dst)
  end
end
pwd()