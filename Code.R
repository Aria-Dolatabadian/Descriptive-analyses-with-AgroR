library(AgroR)

#Descriptive analysis

df <- read.csv("pomegranate.csv")
head(df)
with(df, desc(trat,WL))


#Descriptive analysis (Two factors)


df <- read.csv("cloro.csv")
head(df)


result <- with(df, desc2fat(f1, f2, resp))

plot(result)

#Descriptive analysis (Three factors)

with(enxofre, desc3fat(f1, f2, f3, resp))


#Boxplot with standardized data

df <- read.csv("pomegranate.csv")
head(df)

dispvar(pomegranate[,-1])

trat=df$trat
dispvar(df[,-1], trat)

#Table descritive analysis

df <- read.csv("pomegranate.csv")
head(df)

tabledesc(df)
library(knitr)
kable(tabledesc(df))
