# Introduction to data frames

vec1 = c(1,2,3)
vec2 = c("R","scilab","Java")
vec3 = c("For prototyping","For prototyping","For scaleup")
df = data.frame(vec1,vec2,vec3)
print(df)

# Manipulating rows in data frame
df[3,1]= 3.1
df[3,3]= "Others"
print(df)