#Para calcularmos a densidade da distribuição normal em um certo ponto, 
#usamos o comando ‘dnorm’,colocando como parâmetros o ponto desejado, 
#além da média e do desvio padrão da curva normal em questão.

dnorm(0.5,mean=0,sd=1)

#Para calcular probabilidades desse tipo (probabilidade de a variável ser menor que um valor b), 
#podemos usar o comando “pnorm”, colocando como parâmetros b, a média e o desvio padrão.

pnorm(1,mean=0,sd=1)

# P(z>1)
1-pnorm(1,mean=0,sd=1)

#P(0<z<1)

pnorm(1,mean=0,sd=1)-pnorm(0,mean=0,sd=1)

#P(100<x<106) média 100, desvio 5

pnorm(106,mean=100,sd=5)-pnorm(100,mean=100,sd=5)

#P(89<x107)
pnorm(107,mean=100,sd=5)-pnorm(89,mean=100,sd=5)

#P(x>108)

1-pnorm(108,mean=100,sd=5)
