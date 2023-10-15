##  Shapiro-Wilk normality test
## data:  mtcars$hp
install.packages("dgof")
library(dgof)
shapiro.test(mtcars$hp)

#teste de Kolmogorov-Smirnov 

ks.test(mtcars$hp, "pnorm", mean(mtcars$hp), sd(mtcars$hp), exact = TRUE)

#Testes de Normalidade

set.seed(123)
x = rnorm(1000)


shapiro.test(x) 
ks.test(x,"pnorm",mean(x),sd(x))
#O p-valor for < 0.05 indica que os dados não apresentam normalidade.

data(cars)
shapiro.test(cars$speed)

ks.test(cars$speed,"pnorm",mean(cars$speed),sd(cars$speed))
