######### [JOHN HOPKINS] R PROGRAMMING WEEK 1 ##########
##### PRACTICAL R EXERCISES #####

install.packages("swirl")
packageVersion("swirl")
library(swirl)

install_from_swirl("R Programming")
swirl()
Paulo

3

1
1

5 + 7

x <- 5 + 7
x
x-3
y <- x-3
y

z <- c(1.1, 9, 3.14)
?c
z

c(z, 555, z)
z*2+1000
my_sqrt <- sqrt (z-1)
1
my_sqrt
my_div <- z/my_sqrt
1
my_div
c(1,2,3,4) + c(0,10)
c(1,2,3,4) + c(0,10,100)
my_div
1
paulo.guimaraes.083@ufrn.edu.br
nYSx68xPCswbbWqO
1
2
getwd() 
ls()
x <- 9
ls()
dir()
?list.files
args(list.files)
old.dir <- getwd()
dir.create("testdir")
setwd("testdir")
file.create("mytest.R")
ls()
list.files()
file.exists("mytest.R")
file.info("mytest.R")
file.rename("mytest.R", "mytest2.R")
file.copy("mytest2.R", "mytest3.R")
file.path("mytest3.R")
file.path("folder1", "folder2")
?dir.create
dir.create(file.path("testdir2","testdir3"), recursive = TRUE)
setwd(old.dir)
2
paulo.guimaraes.083@ufrn.edu.br
63PrWFijAWTJtX9H
1
3
1:20
pi:10
15:1
?':'
seq(1, 20)
seq(0, 10, by=0.5)
my_seq <- seq(5,10, length = 30)
my_seq
length(my_seq)
1:length(my_seq)
seq(along.with = my_seq)
seq_along(my_seq)
rep(0, times = 40)
rep(c(0,1,2), times=10)
rep(c(0, 1, 2), each=10)
1
paulo.guimaraes.083@ufrn.edu.br
NlHwu3OCqOs3Y6dl
1
4
num_vect <- c(0.5,55,-10,6)
tf <- num_vect < 1
2
tf

num_vect >= 6

2
2
2

my_char <- c("My", "name", "is")
my_char
paste(my_char, collapse = " ")
my_name <- c(my_char, "Paulo")
my_name
paste(my_name, collapse = " ")
paste("Hello", "world!", sep = " ")
paste(1:3, c("X", "Y", "Z"), sep = "")

paste(LETTERS, 1:4, sep = "-")
2
paulo.guimaraes.083@ufrn.edu.br
woGA3jcCTHlIC8lJ
1
5
x <- c(44, NA, 5, NA)
x*3
y <- rnorm(1000)
z <- rep(NA, 1000)
my_data <- sample(c(y,z), 100)
my_na <- is.na(my_data)
my_na
my_data == NA
sum(my_na)
my_data
0/0
Inf-Inf
2
paulo.guimaraes.083@ufrn.edu.br
hYGqTS0JG29kN4Ry
1
6
x <- c(rnorm(20), rep(NA, 20))
x
x[1:10]
2
4
x[is.na(x)]
y <- x[!is.na(x)]
y
4
y[y>0]
x[x>0]
x[!is.na(x) & x > 0]
x[c(3, 5, 7)]
x(i.e.x[0])
x[0]
x[3000]
x[c(-2,-10)]
x[-c(2, 10)]
vect <- c(foo = 11, bar = 2, norf = NA)
vect
names(vect)
vect2 <- c(11, 2, NA)
names(vect2) <- c("foo", "bar", "norf")
identical(vect, vect2)
1          
3
2
1
vect["bar"]
vect[c("foo", "bar")]
1
paulo.guimaraes.083@ufrn.edu.br
CyI2Sdh4EHvRd5TZ
1
7
dim(my_vector) <- c(4, 5)
dim(my_vector)
attributes(my_vector)
my_vector
class(my_vector)
my_matrix <- my_vector
?matrix
m
my_matrix2 <- matrix(1:20, nrow = 4, ncol = 5)
identical(my_matrix, my_matrix2)
patients <- c("Bill", "Gina", "Kelly", "Sean")
cbind(patients, my_matrix)
my_data <- data.frame(patients, my_matrix)
my_data
class(my_data)
cnames <- c("patient", "age", "weight", "bp", "rating", "test")
colnames(my_data) <- cnames
my_data
2
paulo.guimaraes.083@ufrn.edu.br
CyI2Sdh4EHvRd5TZ
2
paulo.guimaraes.083@ufrn.edu.br
kZDzxje7VMbu4tsY


######### [JOHN HOPKINS] R PROGRAMMING WEEK 2 ##########
##### CONTROL STRUCTURES - IF-ELSE #####

#Essa estrutura permite que condições lógicas sejam testadas

x = 4

if (x > 3) {
  y <- 10
} else {
  y <- 0
}

y

##### CONTROL STRUCTURES - FOR LOOPS #####

#Operador mais comum

for (i in 1:10) {
  print(i)
}

x <- c(3, 6, 9,12)

for (i in 1:4) {
  print(x[i])
}

for (i in seq_along(x)) {
  print(x[i])
}

for (letter in x) {
  print(letter)
}

for (i in 1:4) print(x[i])

y <- matrix(1:6, 2, 3)

for (i in seq_len(nrow(y))) {
  for (j in seq_len(ncol(y))) {
    print(y[i,j])
  }
}

##### CONTROL STRUCTURES - WHILE LOOPS #####

#Realiza loops com base em expressoes logicas

count <- 0

while (count <= 10) {
  print(count)
  count <- count + 1
}

z <- 5

while (z >= 3 && z <= 10) {
  print(z)
  coin <- rbinom(1,1,0.5)
  
  if(coin == 1) {
    z <- z + 1
  }else {
    z <- z -1 
  }
}

##### CONTROL STRUCTURES - REPEAT, BREAK, NEXT, RETURN #####

#Reapt é utilizada para iniciar loops e nao eh muito comum no r
#a unica maneira de sair de um loop é utilizando o break

x0 <- 1
tol <- 1e-8

repeat{
  x1 <- computeEstimate() #nao eh uma funcao real
  
  if (abs(x1 - x0) < tol) {
    break
  }else {
    x0 <- x1
  }
}

x0

#A funcao next eh usada para pular intercoes de loops
#ja o return  eh usado para sair ou retornar a algum valor

for (i in i:100) {
  if(1 <= 20){
    next #skip os primeiros 20 loops
  }
}

##### YOUR FIRST R FUNCTION #####

# eh preferivel manter suas funcoes em um arquivo separado do restante do codigo

add2 <- function(x, y) { #argumentos da funcao
  x + y #gera a expressao
}

add2(3, 5) #utilizando a funcao

above10 <- function(x) {
  use <- x > 10
  x[use]
}

above <- function(x, n) {
  use <- x > n
  x[use]
}

above(1:20, 10)

#Agora um exemplo mais complexo: media de colunas
#observe que nesse caso, o argumento x eh uma tabela
#removena sera um argumento por padrao igual a T, mas podera ser alterado
#removena removera observacoes faltantes

cmean <- function(x, removena = TRUE) {
  nc <- ncol(x)
  means <- numeric(nc)
  for (i in 1:nc) {
    means[i] <- mean(y[, i], na.rm = removena)
  }
  means
}



##### SCOPING RULES - SYMBOL BINDING #####

#Suponha que criei uma função cujo o nome da função já esteja atribuida a outra função,
#Qual valor o R retornará para este nome que contêm duas funções?

#Quando precisa-se encontrar algum valor no R, ocorre uma pesquisa
#Essa pesquisa ocorre primeiro no ambiente global do R que é o espaço de trabalho,
#consistindo em todas as coisas que eu defini ou c arreguei no R

#Caso não seja encontrado, o R pesquisará nos ambientes dos pacotes instalados
#Para consultar o caminho, utilize a função abaixo
search()

#As regras de escopo (Scoping Rules) determinam como um valor é vinculado a uma 
#variável livre em uma função
#Em uma função há dois tipos de variáveis:
#1 - Aquelas que são definidas no argumento da função
#2 - Aquelas que estão na função, mas não são argumentos
#Como atribuir valor a variável do tipo 2?

#Então o R utiliza o que é chamado de escopo léxico ou escopo estático,
#e esta é uma alternativa comum a algo chamado escopo dinâmico.
#Então as regras de escopo é como o R
#utiliza a lista de busca para vincular um valor a um símbolo.
#E uma coisa boa sobre o escopo léxico
#é que acaba por ser particularmente útil
#para simplificar as coisas, tais como cálculos estatísticos. 

#exemplo:

f <- function(x, y) {
  x^2 + y / z
}

#de onde vem o z?
#ela é o que se chama de variável livre, já que não está definida no argumento da função

#os valores das variáveis livres são pesquisados
#no ambiente em que a função foi definida. 
#E o que é o ambiente?
#Um ambiente é a coleção de pares símbolos-valores. 
#E todo ambiente que é uma coleção
#desses pares de símbolos-valores, tem um ambiente pai.
#É como se o ambiente que fica no topo
#seria o que ele herdaria e,
#é possível para um ambiente ter múltiplos filhos.
#E há somente um ambiente sem um pai e este é o ambiente vazio. 

##### CODING STANDARDS #####

#padrões de código ajudam o código a ser mais legível para outras pessoas

# 1- Manter o código em formato de texto
# 2- Identar o Código
# 3- Limitar a "largura" do seu código, tomar cuidado para não ir muito para a
# direita
# 4- Limitar o tamanho das suas funções 

##### QUIZ WEEK 2 #####

cube <- function(x, n) {
  x^3
}

cube(3)

f <- function(x) {
  g <- function(y) {
    y + z
  }
  z <- 4
  x + g(x)
}

z <- 10
f(3)

x <- 5
y <- if(x < 3) {
  NA
} else {
  10
}    

y

##### PRACTICAL R EXERCISES (LOGIC, FUNCTIONS, DATES AND TIMES) #####

#install.packages("swirl")
packageVersion("swirl")
library(swirl)

#install_from_swirl("R Programming")
swirl()

Paulo Benicio Andrade Guimaraes

3
1
8
TRUE == TRUE
(FALSE == TRUE) == FALSE
6 == 7
6 < 7
10 <= 10
4
3
5 != 7
!(5 == 7)
1
1
FALSE & FALSE
TRUE & c(TRUE, FALSE, FALSE)
c(TRUE, TRUE, TRUE) & c(TRUE, FALSE, FALSE)
TRUE && c(TRUE, FALSE, FALSE)
TRUE | c(TRUE, FALSE, FALSE)
TRUE || c(TRUE, FALSE, FALSE)
5 > 8 || 6 != 8 && 4 > 3.9
99.99 > 100 || 45 < 7.3 || 4 != 4.0
2
1
isTRUE(6 > 4)
identical('twins', 'twins')
xor(5 == 6, !FALSE)
3
ints <- sample(10)
ints
ints > 5
which(ints > 7)

2
any(ints < 0)
all(ints > 0)
2
1
paulo.guimaraes.083@ufrn.edu.br
pHtRrt0k3pOYpRD0
2

swirl()
Paulo
3
1
9
Sys.Date()
mean(c(2, 4, 5))

2
paulo.guimaraes.083@ufrn.edu.br
5DbRHLGTTFhIxcdA
1

14
d1 <- Sys.Date()
class(d1)
unclass(d1)
d1
d2 <- as.Date("1969-01-01")
unclass(d2)
t1 <- Sys.time()
t1
class(t1)
unclass(t1)
t2 <- as.POSIXlt(Sys.time())
t2
class(t2)
t2
unclass(t2)
str(unclass(t2))
t2$min
weekdays(d1)
months(d1)
months(t1)
quarters(t2)
t3 <- "October 17, 1986 08:24"
t4 <- strptime(t3, "%B %d, %Y %H:%M")
t4
class(t4)
Sys.time() > t1
Sys.time() - t1
difftime(Sys.time(), t1, units = 'days')
1
paulo.guimaraes.083@ufrn.edu.br
e4vEgHoUtFgEKl9h
















######### [JOHN HOPKINS] R PROGRAMMING WEEK 3 ##########
##### LOOP FUNCTIONS - LAPPLY #####

#Aplica uam função a uma lista de objetos 

x <- list(a = 1:5, b = rnorm(10))
lapply(x, mean)

#sapply é uma variação do lapply

round(sapply(x, mean), digits = 2)

##### LOOP FUNCTIONS - APPLY #####

str(apply)

#A função apply (aplicar) é outra função de loop usada para
#calcular uma função sobre os eixos de um arranjo (array).
#É geralmente usada para aplicar uma função às colunas ou linhas de uma matriz. 

z <- matrix(rnorm(200), 20, 10)
apply(z, 2, mean)
apply(z, 1, mean)

#O argumento do meio no apply é a "Margin", ou seja, que dimensão do array eu
#usarei, no caso do 2 estou usando colunas, no caso do 1 estou usando linhas

#As funções abaixo decladaras como objetos existem, aqui está a expolicação 
#do que fazem 
rowSums = apply(z, 1, sum) 
rowMeans = apply(z, 1, mean)
colSums = apply(z, 2, sum)
colMeans = apply(z, 2, mean)

apply(z, 1, quantile, probs = c(0.25, 0.75))

##### LOOP FUNCTIONS - APPLY #####

#aplica uma função em paralelo sobre um conjunto de argumentos diferentes. 
#mapply pode tomar vários argumentos de lista e,
#em seguida, aplicar uma função para o, para os
#elementos daqueles, das várias listas, em paralelo. 

mapply(rep, 1:4, 4:1)

##### QUIZ WEEK 3 #####

library(datasets)
data(iris)
lapply(iris, mean)

data(mtcars)


##### PRATICAL R EXERCISES #####

swirl()
Paulo
1
10
head(flags)
dim(flags)
class(flags)
as.list(flags)
cls_list <- lapply(flags, class)
cls_list
class(cls_list)
as.character(cls_list)
cls_vect <- sapply(flags, class)
class(cls_vect)
sum(flags$orange)
flag_colors <- flags[, 11:17]
head(flag_colors)
lapply(flag_colors, sum)
sapply(flag_colors, sum)
sapply(flag_colors, mean)
flag_shapes <- flags[, 19:23]
lapply(flag_shapes, range)
shape_mat <- sapply(flag_shapes, range)
shape_mat
class(shape_mat)
unique(c(3, 4, 5, 5, 5, 6, 6))
unique_vals <- lapply(flags, unique)
unique_vals
lapply(unique_vals, length)
sapply(unique_vals, length)
sapply(flags, unique)
lapply(unique_vals, function(elem) elem[2])
2
paulo.guimaraes.083@ufrn.edu.br
s7x1BN7rLMrwwCIB
1
11

sapply(flags,unique)
vapply(flags, unique, numeric(1))
ok()
sapply(flags, class)
vapply(flags, class, character(1))
?tapply
table(flags$landmass)
table(flags$animate)
tapply(flags$animate, flags$landmass, mean)
tapply(flags$population, flags$red, summary)

1

tapply(flags$population, flags$landmass, summary)
2
2
paulo.guimaraes.083@ufrn.edu.br
cYrhumFnqeDq1rW0


######### [JOHN HOPKINS] R PROGRAMMING WEEK 4 ##########
##### THE STR FUNCTION #####

#str mostra de forma compacta toda estrutura de um objeto R
#função de diagnóstico simples

str(x)
str(lapply)

?split
s <- split(iris, iris$Species)

##### SIMULATION - GENERATING RANDOM NUMBERS #####

#Há algumas funções que são utilizadas para simular números ou variáveis de algumas
#distribuições de probabilidade

# prefixos comuns:
## d para desndidade 
## r para números aleatórios
## p para distribuição acumulada
## q para quantil

# rnorm, rpois, rgamma

x <- rnorm(10)
x

y <- rnorm(10,20,2)
y

mean(y)
sd(y)

#quando há simulacao de números é importante definir uma "seed" para gravar a 
#geração

set.seed(1)
rnorm(5)

rnorm(5)

set.seed(1)
rnorm(5)





##### SIMULATION - SIMULATING A LINEAR MODEL #####

#Supondo que temos um modelo linear:
# y = B0 + B1x + e

set.seed(20)
x <- rnorm(100)
e <- rnorm (100,0,2)
y <- 0.5 + 2 * x + e
summary(y)
plot(x, y)

##### SIMULATION - RANDOM SAMPLING #####

set.seed(1)
sample(1:10, 4)
sample(letters, 5)
sample(1:10)
sample(1:2, 10, replace = T)

 




##### PRATICAL R EXERCISES #####

swirl()
Paulo
2
1
bye()
12
ls()
class(plants)
dim(plants)
nrow(plants)
ncol(plants)
object.size(plants)
names(plants)
head(plants)
head(plants, 10)
tail(plants, 15)
summary(plants)
table(plants$Active_Growth_Period)
str(plants)
1
paulo.guimaraes.083@ufrn.edu.br
9JBcAw7a7ndwy4hJ
1
13
?sample
sample(1:6, 4, replace = TRUE)
sample(1:20, 10)
LETTERS
sample(LETTERS)
flips <- sample(c(0,1), 100, replace = TRUE, prob = c(0.3, 0.7))
flips
sum(flips)
?rbinom
rbinom(1, size = 100, prob = 0.7)
flips2 <- rbinom(100, size = 1, prob = 0.7)
flips2
sum(flips2)
?rnorm
rnorm(10)
rnorm(10, 100, 25)
?rpois
rpois(5, 10)
my_pois <- replicate(100, rpois(5, 10))
my_pois
colMeans(my_pois)
cm <- colMeans(my_pois)
hist(cm)
1
paulo.guimaraes.083@ufrn.edu.br
puR3pkmFnTUaUOMS
1
14
exit()
info()
bye()
15
data(cars)
?cars
head(cars)

plot(cars)
?plot
plot(cars$speed, cars$dist)
plot(cars$dist, cars$speed)
plot(x = cars$speed, y = cars$dist, xlab = "Speed")
plot(x = cars$speed, y = cars$dist, ylab = "Stopping Distance")
plot(x = cars$speed, y = cars$dist, xlab = "Speed", ylab = "Stopping Distance")
plot(x = cars$speed, y = cars$dist, xlab = "Speed", ylab = "Stopping Distance", main = "My Plot")
plot(cars, main = "My Plot")
plot(cars, sub = "My Plot Subtititle")
plot(cars, sub = "My Plot Subtitle")
plot(cars, xlim = c(10, 15))
plot(cars, pch = 2)
data(mtcars)
boxplot(mtcars)
?boxplot
boxplot(formula = mpg~cyl, data = mtcars)
hist(mtcars$mpg)
2
paulo.guimaraes.083@ufrn.edu.br
YytP6IoR6uktv6aa
2
bye()
2
