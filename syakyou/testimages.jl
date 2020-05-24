using TestImages
using Plots

cameraman = testimage("cameraman")
lena = testimage("lena")
p1 = plot(cameraman)
p2 = plot(lena)
plot(p1, p2, layout = (1, 2), size = (600, 300))
