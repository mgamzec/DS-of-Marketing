# Cluster Analysis 
## Our customer has millions of email records, and has been contextualizing
## that data with customer preference and customer activity. So we want to
## establish as set of segmentations and use that information to create
## campaigns that are personalized to different groups.


# Connect to our case study data
myClusterData <- read.csv("C:/Users/merve/Desktop/Ex_Files_Data_Science_of_Marketing/Exercise_Files/05_02/cluster-r.csv")

# Review our data
head(myClusterData)

# Standardize the data. This is best practice for ML. What it does transform this data equal with it.Use scale function
myClusterDataStandardized <- scale(myClusterData[-1])

# Run kmeans on our standardized data. Her grup icin ort degeri belirtir
## What this algorithm doea is it establishes the mean value for each number of groups
## In this case, we tell it to sort by a certain value and that mean
## value becomes what is known as a centroid.
## A centroid is an average that the data will be grouped around.
ourGroups <- kmeans(myClusterDataStandardized, 3)

# Load in our cluster library
library(cluster)


# Visualize our clusters
clusplot(myClusterDataStandardized, ourGroups$cluster)

# Summarize our data
ourGroups$size

## so you can see what number of values or what number of data points
## consist for each of those groups that we just created.
## So what you can do is you can assign these three customer cohorts
## to a segment and create an email campaign specific to each group, with target columns.


