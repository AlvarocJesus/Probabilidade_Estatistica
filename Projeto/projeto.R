# instalando pacotes
install.packages("ggplot2")
install.packages("dgof")
library(ggplot2)
library(dgof)

# Ler o arquivo
df <- read.csv("", header = TRUE, sep=';')

view(df)

# a)	Média, variância, desvio padrão e mediana para x e y.
# Média
mediaX = mean(df$x)
mediaY = mean(df$y)
print({ mediaX, mediaY })

# Variância
x2 = function(x){x^2*(0.2*x+0.3)}
E2X<-integrate(x2, lower = 0, upper = 2)

y2 = function(x){x^2*(0.2*x+0.3)}
E2Y<-integrate(y2, lower = 0, upper = 2)
print({ E2X, E2Y })

# desvio padrão
varX <- E2X$value-EX$value^2
varY <- E2Y$value-EY$value^2

dX = sqrt(varX)
dY = sqrt(varY)
print({ dX, dY })

# sd(df$x)
# sd(df$y)

# mediana
medianaX = median(df$x)
medianaY = median(df$y)

# b)	O histograma de x e y.
# c)	O boxplot de x e y.
# d)	O coeficiente de correlação de x e y.
# e)	Fazer o teste de normalidade para  y e x.
# f)	Fazer o gráfico de densidade junto com o histograma para as variáveis x e y.
