# Data frame example 2

pd = data.frame("Name"=c("Dennis","Dennis","Brigitte","Brigitte"),
                "Month"=c("Jan","Feb","Jan","Feb"),
                "BS"=c(141,139.3,135.2,160.1),
                "BP"=c(90,78,80,81))
print(pd)

# Data frame example 3
pd_new=data.frame("Name"=c("Dennis","Merveilles","Brigitte"),"Department"=c("PSE","Data Analytics","PSE"))
print(pd_new)

# using left_join()
# To combine two dataframes

library(dplyr)
pd_left_join1<-left_join(pd,pd_new,by="Name")
print(pd_left_join1)

# Using right_join()
# To combine two data frames

pd_right_join1<-right_join(pd,pd_new,by="Name")
print(pd_right_join1)

pd_right_join2<-right_join(pd_new,pd,by="Name")
print(pd_right_join2)

# Using inner_join()
# To combine two data frames

library(dplyr)
pd_inner_join1<-inner_join(pd_new,pd,by="Name")
print(pd_inner_join1)

# EXERCISE on full_join(), semi_join() and anti_join()