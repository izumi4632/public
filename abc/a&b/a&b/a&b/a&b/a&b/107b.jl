function tenchi(x)
    h=length(x)
    w=length(x[1])
    k=[[x[j][i]for j=1:h] for i=1:w]
    return k
end
function hantei(x)
  return unique(x)!=['.']
end
function main()
  h,w=parse.(split(readline()))
  a=[[j for j=chomp(readline())] for i=1:h]
  a=[i for i in a if hantei(i)]
  a=tenchi(a)
  a=[i for i in a if hantei(i)]
  a=tenchi(a)
  for i in a
    for j in i
      print(j)
    end
  println()
  end
end
main()