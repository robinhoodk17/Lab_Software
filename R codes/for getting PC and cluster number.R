gc()
tryCatch({
  library(Hmisc)
  library(ggplot2)
  library(readxl)
  library(reshape2)
  library(plyr)
  library(scales)
  library(mice)
  library(xlsx)
  library(factoextra)
},error = function(error){
  install.packages("Hmisc")
  install.packages("mice")
  install.packages("ggplot2")
  install.packages("readxl")
  install.packages("reshape2")
  install.packages("plyr")
  install.packages("scales")
  install.packages("xlsx")
  install.packages(factoextra)
})


#PLease enter here the name of the folder with the files (remember to change all \ characters)
foldername = "C:/Users/rodrigudi/Documents/projects/R codes/clustering analysis/young only/"



clusters = 3

max_clusters = 15



if(max_clusters > nrow(data)){
  max_clusters = nrow(data)-1
}


repetitions = 200
#getting the names of the files in the folder
setwd(foldername)
file_list = list.files(foldername)


data = data.frame()
sampleid = data.frame()

for (i in 1:length(file_list)){
  temp_data = read_excel(file_list[i])
  temp_id = temp_data[1]
  for(j in 1:length(temp_id)){
    temp_id$Class[j] = strsplit(file_list[i], ".xlsx")[[1]][1]
    file_list[i] = strsplit(file_list[i], ".xlsx")[[1]][1]
  }
  temp_data = temp_data[2:length(temp_data)]
  data = rbind(data,temp_data)
  sampleid = rbind(temp_id, sampleid)
}





names(sampleid) = c("sampleid", "file")

data = complete(mice(complete(mice(data))))

model = kmeans(data, nstart = repetitions, centers = clusters)


pca = prcomp(data, center = TRUE, scale. = TRUE)
components = as.matrix(pca$x)


clustertags = model$cluster
data = cbind(clustertags, data)
data = cbind(sampleid, data)

data = data.frame(data, stringsAsFactors = FALSE)


#plotting the samples with PCA
plot(cbind(components[,1],components[,2]), pch = 19, xlab = "PC1", ylab = "PC2", col = as.factor(data$file), main = "files shown using PCA")
legend("bottomright", inset = .02, fill = as.factor(file_list), legend = c(file_list))
fviz_eig(pca)











setwd(foldername)
file_list = list.files(foldername)
data = data.frame()
sampleid = data.frame()
for (i in 1:length(file_list)){
  temp_data = read_excel(file_list[i])
  temp_id = temp_data[1]
  for(j in 1:length(temp_id)){
    temp_id$Class[j] = strsplit(file_list[i], ".xlsx")[[1]][1]
  }
  temp_data = temp_data[2:length(temp_data)]
  data = rbind(data,temp_data)
  sampleid = rbind(temp_id, sampleid)
}





names(sampleid) = c("sampleid", "file")

data = complete(mice(complete(mice(data))))


#get the plot for the number of clusters
wss = 0
#par(mfrow = c(3, 5))
for(i in 1:max_clusters) {
  km.out <- kmeans(data, centers = i, nstart = 100)
  wss[i] = km.out$tot.withinss
  # to plot the clusters
  #  plot(data[c(1,2)], col = km.out$cluster, 
  #       main = km.out$tot.withinss, 
  #       xlab = paste(toString(i),"clusters"), ylab = "")
}

#create a 1x 1 grid for the plot
par(mfrow = c(1, 1))
#create the wss vs number of clusters plot
plot(1:max_clusters, wss, type = "b", 
     xlab = "Number of Clusters", 
     ylab = "total Within groups sum of squares")
a = matrix(as.matrix(data), ncol = length(data), dimnames = list(c(sampleid$file), c(names(data))))
d <- dist(a)   # find distance matrix 
hc <- hclust(d)                # apply hirarchical clustering 
plot(hc)

