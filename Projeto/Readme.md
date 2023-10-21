# Documentação do Projeto em R

## Introdução

Este projeto envolve análise de dados usando a linguagem de programação R, com foco em estatísticas descritivas e visualização. O objetivo principal é explorar e entender os dados contidos no arquivo CSV fornecido. O projeto utiliza pacotes R populares, como ggplot2, dgof, asbio e BSDA, para realizar análises estatísticas e criar visualizações informativas.

## Autores

![Foto do Autor 1](caminho_para_foto_autor1.jpg)

- **Nome do Autor 1:** [Nome do Autor 1]
- **RA do Autor 1:** [RA do Autor 1]

![Foto do Autor 2](caminho_para_foto_autor2.jpg)

- **Nome do Autor 2:** [Nome do Autor 2]
- **RA do Autor 2:** [RA do Autor 2]

(Adicione mais informações sobre outros autores, se aplicável)

## Passo 1: Instalando Pacotes

```R
# Instalação dos pacotes
install.packages("ggplot2")
install.packages("dgof")
install.packages("asbio")
install.packages("tcltk")
library(ggplot2)
library(dgof)
library("asbio")
library(BSDA)
```

## Passo 2: Carregando os Dados

```R
# Ler o arquivo CSV
df <- read.csv("seu_arquivo.csv", header = TRUE, sep=';')

# Visualizar as primeiras linhas do arquivo
head(df)
```

## Passo 3: Análise Estatística

### a) Média, Variância, Desvio Padrão e Mediana para x e y

```R
# Cálculo da média
mediaX = mean(df$x)
mediaY = mean(df$y)

# Cálculo da variância
x2 = function(x){x^2*(0.2*x+0.3)}
E2X <- integrate(x2, lower = 0, upper = 2)
y2 = function(x){x^2*(0.2*x+0.3)}
E2Y <- integrate(y2, lower = 0, upper = 2)

# Cálculo do desvio padrão
varX <- E2X$value - (EX$value^2)
varY <- E2Y$value - (EY$value^2)
dX = sqrt(varX)
dY = sqrt(varY)

# Cálculo da mediana
medianaX = median(df$x)
medianaY = median(df$y)
```

#### Saída

```bash
Saídas:
Média de x: [valor]
Média de y: [valor]
Variância de x: [valor]
Variância de y: [valor]
Desvio Padrão de x: [valor]
Desvio Padrão de y: [valor]
Mediana de x: [valor]
Mediana de y: [valor]
```

### b) Histograma de x e y

```R
ggplot(df, aes(x = x)) +
  geom_histogram(color = "White", binwidth = 5, boundary = 0)
```

#### Saída

![]()

### c) Boxplot de x e y

```R
ggplot(df, aes(x = x)) +
  geom_boxplot()
```

#### Saída

![]()

### d) Coeficiente de Correlação entre x e y

```R
correlation <- cor(df$x, df$y)
```

#### Saída

```bash
Saída:
Coeficiente de Correlação entre x e y: [valor]
```

## Passo 4: Teste de Normalidade

```R
# Teste de Normalidade para x
shapiroX <- shapiro.test(df$x)

# Teste de Normalidade para y
shapiroY <- shapiro.test(df$y)
```

### Saída

```bash
Saídas:
Teste de Normalidade para x (Shapiro-Wilk): p-valor = [valor]
Teste de Normalidade para y (Shapiro-Wilk): p-valor = [valor]
```

## Passo 5: Gráfico de Densidade junto com o Histograma para x e y

```R
ggplot(df, aes(x = x, y = ..density..)) +
  geom_histogram(color = "White", binwidth = 5, boundary = 0, alpha = 0.5) +
  geom_density()
```

### Saída

![]()

## Checklist para Finalização do Projeto

- [ ] Análise de estatísticas descritivas concluída.
- [ ] Visualizações:
  - [ ] Histogramas
  - [ ] Boxplots
  - [ ] Gráfico de densidade
- [ ] Testes de normalidade realizados.
- [ ] Documentação revisada e saídas incluídas.
- [ ] Conclusões e interpretações prontas.
- [ ] Relatório final preparado.

## Conclusão

Esta documentação fornece um guia passo a passo para a análise de dados e visualização em R, com a expectativa de ajudar a compreender e comunicar as principais conclusões do projeto.
