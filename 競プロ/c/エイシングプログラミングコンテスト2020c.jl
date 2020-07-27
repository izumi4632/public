if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
function f(x::Int,y::Int,z::Int)
  return x^2+y^2+z^2+x*y+y*z+z*x
end
function main()
  n=parse(Int,readline())
  for i=1:n
    count=0
    qi=Int(isqrt(i))
    for x=1:qi
      for y=1:qi
        nn=i-x^2-y^2-x*y
        if nn>=1
          nz=Int(isqrt(nn))
          for z=1:nz
            count+=z*(z+x+y)==nn
          end
        end
      end
    end
    println(count)
  end
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
