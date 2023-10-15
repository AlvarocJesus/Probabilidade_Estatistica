
#Binomial
#x = eventos, p = probabilidades, size = eventos
#Se jogar uma moeda 5 vezes, qual a prob. de dar cara 3 vezes?
  
dbinom(x=3,size=5,prob=0.5)

#Se eu passar 4 sinais de quatro tempos cada. 
#Qual a probabilidade de eu pegar 0,1,2,3 e 4 sinais verdes?

pbinom(q=4, size=4, prob=0.25)

#Se eu passar 4 sinais de quatro tempos cada. 
#Qual a probabilidade de eu pegar 3 OU MAIS sinais verdes?

pbinom(q=2, size=4, prob=0.25)
1 - pbinom(q=2, size=4, prob=0.25)

#Poisson

#O número de acidentes em um dia é igual a 2, 
#qual a proabilidade de ocorrerem 3 em 1 dia?

dpois(3,lambda=2)

#O número de acidentes em um dia é igual a 2, 
#qual a proabilidade de ocorrerem MENOS DO QUE 3 em 1 dia?
ppois(2,lambda = 2)
dpois(0,lambda=2) + dpois(1,lambda=2) + dpois(2,lambda=2)

#O número de acidentes em um dia é igual a 2, 
#qual a proabilidade de ocorrerem MAIS DO QUE 3 em 1 dia?

ppois(3,lambda=2) 
1 - ppois(3,lambda=2) 
