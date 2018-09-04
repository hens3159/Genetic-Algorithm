library(GA)
library(knitr)
Data_nilai <- function(x1, x2)
{
  10.4+x1*sin(3*pi*x1)+x2*sin(13*pi*x2)
}
x1 <- seq(-2,15.5, by=0.5)
x2 <- seq(3.27,8.9, by=0.211)
f <- outer (x1, x2, Fungsi)
persp3D(x1, x2, f, theta = 50, phi = 20)
filled.contour(x1,x2,f,color.palette = jet.colors)
GA <- ga(type = "real-valued", fitness = function(x)-Data_nilai(x[1],x[2]),
         min=c(-3, -3), max=c(16,16),
         popSize = 40, maxiter=1000)
summary(GA)
plot(GA)
