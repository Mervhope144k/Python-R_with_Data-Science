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