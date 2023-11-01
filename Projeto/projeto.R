# instalando pacotes
install.packages("ggplot2")
install.packages("dgof")
install.packages("asbio")
install.packages("tcltk")
library(ggplot2)
library(dgof)
library("asbio")
library(BSDA)

# Ler o arquivo
df <- read.csv("", header = TRUE, sep=';')

# olhar o arquivo
head(df)

# printar uma coluna
print(df$x)

# verificar se tem NA
any(is.na(df$x))

# Le as colunas do arquivo
x <- mtcars[, c("mpg")]
y <- mtcars$mpg

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
# hist(df$x)
# hist(df$y)
ggplot(ny, aes(x = Temp)) +
  geom_histogram(color = "White", binwidth = 5, boundary = 0)

# c)	O boxplot de x e y.
# boxplot(df$x)
# boxplot(df$y)
ggplot(ny, aes(x = Month, y = Temp, group = Month, fill = Month)) +
  geom_boxplot() + scale_fill_brewer(palette = "Pastel1")

# d)	O coeficiente de correlação de x e y.
# cor(df$x, df$y)
# cor.test(df$x, df$y)
# cor.test(df$x, df$y, method = "pearson")

# --------------------codigo professor--------------------
cor(x,y)
boxplot(x, main="x");
# ----------------------------------------------------------

# e)	Fazer o teste de normalidade para  y e x.
# qqnorm(df$x)
# qqline(df$x)
# qqnorm(df$y)
# qqline(df$y)
# shapiro.test(df$x)
# shapiro.test(df$y)

# ---------------------codigo professor---------------------
set.seed(123)
x = rnorm(1000)


shapiro.test(x) 
ks.test(x,"pnorm",mean(x),sd(x))
#O p-valor for < 0.05 indica que os dados não apresentam normalidade.

data(cars)
shapiro.test(cars$speed)

ks.test(cars$speed,"pnorm",mean(cars$speed),sd(cars$speed))
# ----------------------------------------------------------

# f)	Fazer o gráfico de densidade junto com o histograma para as variáveis x e y.
# ggplot(ny, aes(x = Temp)) +
#   geom_density()
# ggplot(ny, aes(x = Temp, colour = Windy)) +
#   geom_density()
# ggplot(ny, aes(x = Temp, colour = Windy, fill = Windy)) +
#   geom_density(alpha = 0.25)

# ---------------------codigo professor---------------------
ggplot(ny, aes(x = Temp, y = ..density..)) +
  geom_histogram(color = "White", binwidth = 5, boundary = 0, alpha = 0.5) +
  geom_density()
# ----------------------------------------------------------
