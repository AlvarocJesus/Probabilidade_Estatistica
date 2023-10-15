# Gráfico de uma função
x1 <- seq(0, 2, l = 100)
y1 <- 0.2*x1+0.3
plot(x1, y1, type = "l")

#Derivada de uma função
y = expression(0.2*x+0.3)
(D.x = D(y, "x"))

#Probabilidade de 0 até 1
y = function(x){0.2*x+0.3}
integrate(y, lower = 0, upper = 1)

# Cálculo da esperança de X
y1 = function(x){x*(0.2*x+0.3)}
E<-integrate(y1, lower = 0, upper = 2)
print(E)

# Cálculo da variancia
y2 = function(x){x^2*(0.2*x+0.3)}
E2<-integrate(y2, lower = 0, upper = 2)
print(E2)

# Cáculo do desvio padrão
var<-E2$value-E$value^2
print(var)

d=sqrt(var)
print(d)
