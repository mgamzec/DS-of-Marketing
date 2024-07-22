# import csv file
myExploratoryData <- read.csv("C:/Users/merve/Desktop/Ex_Files_Data_Science_of_Marketing/Exercise_Files/02_02/exploratory-r.csv")

# get a quick snapshot of your data
df <- read.csv("C:/Users/merve/Desktop/Ex_Files_Data_Science_of_Marketing/Exercise_Files/02_02/exploratory-r.csv")
head(df)
hist(df)
hist(df$cpa) # cpa:cost per acquisition 

# shift the names to each row
row.names(df) <- df$keyword # say??lar yerine kendi isimlerini sat??rlarda g??r??yoruz

# review that transformation
head(df) # art??k, say??lar yerine labellar?? g??r??r??z

# transform into a matrix
myMatrix <- data.matrix(df) # heatmap olusturmak icin ??nce matrix e cevirmeliyiz datay??

# generate our heatmap
heatmap(myMatrix, Rowv=NA, Colv=NA, scale="column")
