# Data frame example 2

pd = data.frame("Name"=c("Dennis","Dennis","Brigitte","Brigitte"),
                "Month"=c("Jan","Feb","Jan","Feb"),
                "BS"=c(141,139.3,135.2,160.1),
                "BP"=c(90,78,80,81))
pd2 = subset(pd,Name=="Dennis" | BS>150)
print("new subset pd2")
print(pd2)
print("Original dataframe")
print(pd)

# Data frame example 3
# melt operation sample code
library(reshape2)
Df =melt(pd,id.vars=c("Name","Month"),measure.vars=c("BS","BP"))
print(Df)

# cast operation sample code
# continued from previous code
# we use dcast as we are working on a data frame

Df2 = dcast(Df,variable+Month ~ Name, value.var = "value")
print(Df2)

# Recasting in single step
recast(pd,variable+Month~Name,id.var=c("Name","Month"))

# Adding new variables
library(dplyr)
pd2<-mutate(pd,log_BP=log(BP))
print(pd2)