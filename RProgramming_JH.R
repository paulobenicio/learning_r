
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


