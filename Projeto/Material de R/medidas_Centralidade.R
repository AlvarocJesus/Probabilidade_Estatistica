#Medidas de Centralidade e Variabilidade
#Dados dos jogadores
library(ggplot2)
jogadores = c(40000,18000,12000,250000,30000,140000,300000,40000,800000)

#Média

mean(jogadores)

#Mediana

median(jogadores)

#Quartis

quartis  = quantile(jogadores)
quartis

#3º quartil

quartis[4]

#Desvio padrão

sd(jogadores)

#Resumo

summary(jogadores)


#Testes de Normalidade
#Repetir o experimento

set.seed(123)

#Gera mil variáveis normalmente distribuidas

x = rnorm(1000)

#Gráfico QQ

#rodar com Ctrl+shift+enter
qqnorm(x)
#linha
qqline(x)

#Histograma com linha de densidade

#rodar com Ctrl+shift+enter
hist(x, main="")
par(new=TRUE)
plot(density(x),ylab = "", xlab = "", axes=F, lwd=2.5 ) 

#boxplot 

box <- c(17, 22, 23, 27, 29, 32, 38, 42, 46, 52, 60, 92)
quantile(box, type = 2)

boxplot(box, main = "Box plot")

# boxplot dataset

library(MASS)
data(cats)
boxplot(Bwt ~ Sex, data = cats)
boxplot(Bwt ~ Sex, col = c("red", "blue"), data = cats)
