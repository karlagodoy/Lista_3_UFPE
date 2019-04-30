# Analise de Dados 

# Aluna: Karla Godoy

# Lista3

# Exercicio1

# https://github.com/karlagodoy/Lista_3_UFPE

# Exercicio2

x <- 2

y <- 3

z <- x+y

z * 10995413444

# resultado: 54977067220

# Exercício3

# Uma descrição dos tipos de variáveis da base

str(mtcars)

# R= data.frame':	32 obs. of  11 variables:
# $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
# $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
# $ disp: num  160 160 108 258 360 ...
# $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
# $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
# $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
# $ qsec: num  16.5 17 18.6 19.4 17 ...
# $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
# $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
# $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
# $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
 
 # O número de dimensões da base

dim (mtcars)

#R= 32 11

 # Imprima a terceira coluna da base

mtcars [,3]

# Resultado: [1] 160.0 160.0 108.0 258.0 360.0 225.0 360.0 146.7 140.8 167.6 167.6 275.8 275.8
# [14] 275.8 472.0 460.0 440.0  78.7  75.7  71.1 120.1 318.0 304.0 350.0 400.0  79.0
# [27] 120.3  95.1 351.0 145.0 301.0 121.0

 # Imprima a segunda linha da base

mtcars [2,]

# Resultado: mpg cyl disp  hp drat    wt  qsec vs am gear carb
# Mazda RX4 Wag  21   6  160 110  3.9 2.875 17.02  0  1    4    4

# O quarto elemento presente na variável “cyl”

mtcars$cyl[4]

# R= 6

# Um resumo descritivo da base que apresente as principais informações descritivas das variáveis

summary (mtcars)

# R=  summary (mtcars)
# mpg             cyl             disp             hp             drat      
# Min.   :10.40   Min.   :4.000   Min.   : 71.1   Min.   : 52.0   Min.   :2.760  
# 1st Qu.:15.43   1st Qu.:4.000   1st Qu.:120.8   1st Qu.: 96.5   1st Qu.:3.080  
# Median :19.20   Median :6.000   Median :196.3   Median :123.0   Median :3.695  
# Mean   :20.09   Mean   :6.188   Mean   :230.7   Mean   :146.7   Mean   :3.597  
# 3rd Qu.:22.80   3rd Qu.:8.000   3rd Qu.:326.0   3rd Qu.:180.0   3rd Qu.:3.920  
# Max.   :33.90   Max.   :8.000   Max.   :472.0   Max.   :335.0   Max.   :4.930  
# wt             qsec             vs               am              gear      
# Min.   :1.513   Min.   :14.50   Min.   :0.0000   Min.   :0.0000   Min.   :3.000  
# 1st Qu.:2.581   1st Qu.:16.89   1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:3.000  
# Median :3.325   Median :17.71   Median :0.0000   Median :0.0000   Median :4.000  
# Mean   :3.217   Mean   :17.85   Mean   :0.4375   Mean   :0.4062   Mean   :3.688  
# 3rd Qu.:3.610   3rd Qu.:18.90   3rd Qu.:1.0000   3rd Qu.:1.0000   3rd Qu.:4.000  
# Max.   :5.424   Max.   :22.90   Max.   :1.0000   Max.   :1.0000   Max.   :5.000  
# carb      
# Min.   :1.000  
# 1st Qu.:2.000  
# Median :2.000  
# Mean   :2.812  
# 3rd Qu.:4.000  
# Max.   :8.000  


#Exercício4

install.packages("ffbase", dependencies = TRUE)

require(ffbase)

setwd("C:\\Users\\karla\\Desktop\\Mestrado\\Análise de Dados")

turmas <- read.csv2.ffdf(file = "TURMAS.csv", sep = "|", first.rows = 100000)

# Salvando em Dataframe 

turmas <- as.data.frame(turmas)

#Filtrando dados de PE 

turmas_pe <- subset(turmas, turmas$CO_UF == "26")

#Salvando em RDAta

save(turmas_pe, file ="turmas_pe.RData")


#Exercício5

setwd("C:\\Users\\karla\\Desktop\\Mestrado\\Análise de Dados")

load("turmas_pe.RData")

mean(turmas_pe$NU_MATRICULAS)

#R: 23.07089

#Exercício6

setwd("C:/Users/karla/Desktop/")

Docentes_NE <- read.csv2.ffdf(file = "DOC_NE.csv", sep = "|", first.rows = 100000)

Docentes_pe <- subset(Docentes_NE, CO_UF == "26")

tabela_docentes <- table(Docentes_pe$TP_COR_RACA)

prop.table(tabela_docentes)

#   0           1           2           3           4           5 
#0.440003102 0.237823599 0.035646520 0.277994393 0.003438641 0.005093745 

#6.1

# R: 44%. A coluna 0 mostra a frequência/ percentual das pessoas que não declararam cor ou raça.

# 6.2

#R: 31%, As colunas 2 e 3 são referente as pessoas que se declaram negras ou pardas, logo a resposta será a soma dos dois valores:
# 0.035646520+ 0.277994393= 0.3136409 =  31,36%.
