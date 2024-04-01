managers_data<-read.csv("C:/Users/bhask/Downloads/managers.csv")
managers_data
na_values <- na.omit(managers_data)
na_values
na <-complete.cases(managers_data)
na
na1 <-!complete.cases(managers_data)
na1
sum_complete_cases <- sum(complete.cases(managers_data))
sum_complete_cases
na2<-managers_data[complete.cases(managers_data), ]
na2
na3<-managers_data[!complete.cases(managers_data), ]
na3
nrow(na2)
nrow(managers_data)
dim(managers_data)
df1=na3
nrow(df1)
b=is.na(managers_data$Age)
b
a=sum(is.na(managers_data$Age))
a
c=mean(is.na(managers_data$Age))
c
r=managers_data[complete.cases(managers_data)]
d=mean(r)
d
install.packages('mice')
library(mice)
md.pattern(managers_data)
managers_data
install.packages('VIM')
library(VIM)
missing_values=aggr(managers_data,prop=FALSE, numbers=TRUE)
missing_values
summary(missing_values)
missing_values1=aggr(managers_data,prop=TRUE, numbers=TRUE)
missing_values1
summary(missing_values1)
matrixplot(managers_data)
m_s=as.data.frame(abs(is.na(managers_data)))
head(m_s)
c_m=m_s[(apply(m_s,2,sum)>0)]
c_m
