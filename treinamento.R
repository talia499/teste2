sessionInfo()
#install.packages("tidyverse") # Instalar o pacote "tidyverse"
library(tidyverse) # Carregar o pacote "tidyverse"

# Siga os passos abaixo para instalar os pacotes utilizados nesse curso
# pacotes <- c("tidyverse","data.table","Hmisc","lubridate",
#              "ggrepel","sf","sidrar","survey",
#              "srvyr","scales","ggthemr","readxl",
#              "kableExtra","psych","xtable")


# if(length(setdiff(pacotes,installed.packages()))==0){}else{
#   
#   install.packages(setdiff(pacotes,installed.packages()))
#   
# }

#devtools::install_github('cttobin/ggthemr')

# comentar 
# varias linhas
# apertar ctrl+shift+c
#alt+shift+k: tabela de atalhos pelo techado

#citar algum pacote
citation("tidyverse")

#operadores
1+1

# Função para somar dois valores
somar <- 
  
  # Abrir argumento para criação de função e informar dentro dos parenteses os parâmetros
  function(x,y){
    
    # Construir a operação de soma
    z = x + y
    
    # Retornar o resultado
    return(z)
    
  }
#Aplicar a função
somar(2,4)

#Tipos de dados
x <- 1L # inteiro
class(x)
x <- 1 # numérico
class(x) 
x <- 8i # complexo
class(x)
x <- TRUE # lógico
class(x)
x <- "hello" # character
class(x)

x <- c(1,2,3) # Vetor numérico
typeof(x) # Checar o método de armazenagem
class(x) # Checar a classe
length(x) # Checar o tamanho
str(x) # Checar a estrutura

#As classes de um vetor poder ser alteradas com as seguintes funções:
x <- 1:10
class(x)
as.numeric(x)
as.logical(x)
as.character(x)
#Matriz
x <- matrix(ncol = 2,nrow = 2) # Criar uma matriz  2 x 2
dim(x) # Checar as dimensões da matriz
x[,] <- c(1,7,9,6) # Atribuir valores à matriz
x <- 1:3 # Contruir um vetor x
y <- 10:12 # Construir um vetor z
z <- cbind(x,y) # Montar uma matriz a partir destes vetores (por colunas)
z <- rbind(x,y) # Montar uma matriz a partir destes vetores (por linhas)

m <- matrix(1:4,ncol = 2,nrow = 2) # Construir a matriz m
n <- matrix(5:8,ncol = 2,nrow = 2) # Construir a matriz n
t(m)      # matriz transposta de m
m %*% n   # multiplicação matricial de m por n
solve(m)  # matriz inversa de m

##A lista é um tipo de objeto que pode armazenar diferentes classes em um mesmo local.
lista <- list(1,"galo",2i,2.61,TRUE,matrix(1:4)) # Criar uma lista
lista # Checar a lista criada
lista[[2]] # Acessar o segundo elemento da lista
lista <- list(a=1,b="galo",c=2i,d=2.61,e=TRUE,f=matrix(1:4)) # Criar uma lista, com nomes dos elementos

##Dados categóricos#####
# Construir um fator, com opção para mander a ordem data
x <- factor(c("sim","sim","sim","não","sim","não"),levels = c("não","sim")) 
table(x) # Tabular os dados
levels(x) # Verificar os níveis dos fatores