if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  h,w=parse.(Int,split(readline()))
  a=[chomp(readline()) for i = 1:h]
  tate=Bool[false for i=1:h]
  yoko=Bool[false for i=1:w]
  for i=1:h
    for j=1:w
      if a[i][j]=='#'; tate[i]=true; yoko[j]=true; end
    end
  end
  for i=1:h
    flag=false
    for j=1:w
      if tate[i]==true && yoko[j]==true; print(a[i][j]);flag=true; end
    end
    if flag == true; println(); end
  end
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
