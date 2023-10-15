install.packages("asbio")
install.packages("tcltk")
library("asbio")
library(BSDA)
#Teste de hipotese conhecendo a amostra

dados<-c(9.8, 8.5, 7.0, 10.4, 8.9, 7.9, 5.9, 7.7, 8.8, 7.7,
         7.9, 5.1, 9.9, 7.6, 8.4, 3.7, 6.8, 7.5, 8.5, 5.1, 7.6, 5.0, 6.1, 6.1,
         10.2)

# Para 95% de confiança
z.test(dados, mu=8, alternative="less", sigma.x=2)

#Teste de hipotese conhecendo a média

one.sample.z(null.mu = 0, xbar = 6.5, sigma = 11, n = 60, alternative = 'greater')

