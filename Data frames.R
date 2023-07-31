# Introduction to data frames

vec1 = c(1,2,3)
vec2 = c("R","scilab","Java")
vec3 = c("For prototyping","For prototyping","For scaleup")
df = data.frame(vec1,vec2,vec3)
print(df)

# accessing first & second row:
print(df[1:2,])

# accessing 1st & 2nd column:
print(df[ ,1:2])

# accessing 1st & 2nd column -alternate:
print(df[1:2])

# editing data frames
# df[[2]][2]="R"
print(df)

# adding extra row and column:

df = rbind(df,data.frame(vec1=4,vec2="C",vec3="For Scaleup"))
print("adding extra row")
print(df)

df = cbind(df,vec4=c(10,20,30,40))
print("adding extra col")
print(df)

# Deleting rows and columns:
df2 = df[-3,-1]
print(df2)

# conditional deletion:
df3 = df[,!names(df) %in% c("vec3")]
print(df3)
df4 = df[!df$vec1==3,]
print(df4)

# Manipulating rows in data frame
df[3,1]= 3.1
df[3,3]= "Others"
print(df)