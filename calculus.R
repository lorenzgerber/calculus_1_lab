f = function (x) 3*x^4+4*x-5
x = seq(-2,2,0.1)
plot(f(x))

nderiv = function (f, x, h) (f(x+h)-f(x))/h
f = function (x) cos(x)
nderiv(f,0.5, 0.0001)
df = function (x) nderiv(f, x, 0.0001)
plot(x, f(x), type='b')
points(x, df(x), type='b')

f = function (x) x^11 - 5*x^2+exp(x)

newton = function (f, x, n) {
  for(i in 1:n){
    x <- x-f(x)/nderiv(f,x,0.0001)
  }
  return(x)
}



