
# x = renda familiar em R$ 1000,00
# y = número de aparelhos de TV em cores

x <- c(1,2,3,1,3,2,3,1,2,3)
y <- c(2,1,3,1,3,3,2,1,2,2)
# media de x e y
mean(x)

mean(y)
# desvio padrão
sd(x)
sd(y)
#Dados estatísticos
summary(x)
summary(y)
#Gráfico
plot(x, y,xlab="renda familiar em R$ 1000,00", ylab="número de aparelhos de TV em cores")
#coeficiente de correlaçao de pearson
cor(x,y)
boxplot(x, main="x");
