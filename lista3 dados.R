# Análise de Dados 

# Aluna: Karla Godoy

# Lista3

# Exercício1



# Exercício2

x <- 1

y <- 3

z <- x+y

z * 10995413444

# resultado: 10995413448

# Exercício3

str(mtcars)

dim (mtcars)

mtcars [,3]

# Resultado: [1] 160.0 160.0 108.0 258.0 360.0 225.0 360.0 146.7 140.8 167.6 167.6 275.8 275.8
[14] 275.8 472.0 460.0 440.0  78.7  75.7  71.1 120.1 318.0 304.0 350.0 400.0  79.0
[27] 120.3  95.1 351.0 145.0 301.0 121.0

mtcars [2,]

# Resultado: mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4 Wag  21   6  160 110  3.9 2.875 17.02  0  1    4    4

mtcars$cyl[4]

summary (mtcars)

#Exercício4


install.packages("ffbase", dependencies = TRUE)

require(ffbase)

setwd("C:\\Users\\karla\\Desktop\\Mestrado\\Análise de Dados")

turmas <- read.csv2.ffdf(file = "TURMAS.csv", sep = "|", first.rows = 100000)

#Filtrar dados de PE 

turmas <- as.data.frame(turmas)

turmas_pe <- subset(turmas, turmas$CO_UF == "26")


#Salvando em RDAta

save(turmas_pe, file ="turmas_pe.RData")

getwd()

#Exercício5

setwd("C:\\Users\\karla\\Desktop\\Mestrado\\Análise de Dados")

load("turmas_pe.RData")

mean(turmas_pe$NU_MATRICULAS)

#R: 23.07089

#Exercício6

setwd("C:/Users/karla/Desktop/")

Docentes_NE <- read.csv2.ffdf(file = "DOC_NE.csv", sep = "|", first.rows = 100000)

docentes_pe <- subset(Docentes_NE, CO_UF == "26")

tabela_docentes <- table(docentes_pe$TP_COR_RACA)

prop.table(tabela_docentes)

#R: 44%

#R: 
0.035646520+ 0.277994393
0.3136409: 31%



