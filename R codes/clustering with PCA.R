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
foldername = "C:/Users/rodrigudi/Documents/projects/R codes/clustering analysis/by age all data/"


#PLease enter here the name of the folder where you wish to save the plots (remember to change all \ characters)
Plot_folder = "C:/Users/rodrigudi/Documents/projects/R codes/clustering analysis/graphs-by age all data/"


number_of_principal_components = 4

number_of_clusters = 2





repetitions = 200
#getting the names of the files in the folder
setwd(foldername)
file_list = list.files(foldername)


data = data.frame()
sampleid = data.frame()

for (i in 1:length(file_list)){
  temp_data = read_excel(file_list[i])
  temp_id = temp_data[1]
  #this for only adds the name of the file from where it came as a new variable to each sample
  for(j in 1:length(temp_id)){
    temp_id$Class[j] = strsplit(file_list[i], ".xlsx")[[1]][1]
    file_list[i] = strsplit(file_list[i], ".xlsx")[[1]][1]
  }
  temp_data = temp_data[2:length(temp_data)]
  data = rbind(data,temp_data)
  sampleid = rbind(sampleid, temp_id)
}





names(sampleid) = c("sampleid", "file")

data = complete(mice(complete(mice(data))))


pca = prcomp(data, center = TRUE, scale. = TRUE)
components = as.matrix(pca$x)

components = as.matrix(pca$x)
components = components[,1:number_of_principal_components]
model = kmeans(components, nstart = repetitions, centers = number_of_clusters)

clustertags = model$cluster
data = cbind(clustertags, data)
data = cbind(sampleid, data)
data = data.frame(data, stringsAsFactors = FALSE)




cluster_report = data.frame(matrix(0, nrow = number_of_clusters, ncol = length(file_list)))
names(cluster_report) = file_list

for(i in 1:length(data$sampleid)){
  cluster_report[[data[i,2]]][data[i,3]] = (cluster_report[[data[i,2]]][data[i,3]] + 1)
}
for (i in 1:length(cluster_report)){
  cluster_report[i] = cluster_report[i]/sum(cluster_report[i])
}

#plotting the clusters with PCA
#plot(cbind(components[,1],components[,2]), pch = 19, xlab = "PC1", ylab = "PC2", col = model$cluster, main = "clusters shown in PC1 and PC2")
#legend("bottomright", inset = .02, fill = 1:clusters, legend = c(paste("cluster", 1:clusters)))
components = data.frame(cbind(components[,1], components[,2], model$cluster, sampleid$file))
names(components) = c("PC1", "PC2", "cluster", "file")
(u = ggplot(components, aes(PC1, PC2)) + geom_point(aes(colour = factor(cluster))) )
u = u + geom_text(aes(label = file, colour = factor(cluster)), hjust = 0, vjust = 0, size = 5)
u <- u + theme_grey(base_size=20)
u <- u + theme(axis.ticks=element_blank(), axis.text.x=element_blank(), axis.text.y = element_blank())
u = u + ggtitle("clusters with PCA")
u

plotly::ggplotly(u)

filename = paste(Plot_folder,"clusters obtained using PCA.jpeg")
jpeg(filename = filename, width = 1080, height = 1080, quality = 500)
u
dev.off()


#formatting the cluster percentages matrices for graphing
clusters_r = melt(as.matrix(cluster_report))
clusters_r = ddply(clusters_r, .(Var2), transform, value = value)



#plot the cluster composition
base_size = 15

(t = ggplot(clusters_r, aes(Var2, Var1)) + geom_tile(aes(fill = value), colour = "white")+ scale_fill_gradient(low = ("white"), high = c("darkgoldenrod4", "darkgoldenrod3", "darkgoldenrod2", "darkgoldenrod1", "red"), space = "Lab") + geom_text(aes(label = round(value,4)), size = 4.5) )
#this was for graphing the clusters on a plot
#(u = ggplot(data, aes(x = WBC, y = PLT, color = clustertags)) + geom_point() + geom_text(aes(label=file),hjust=0, vjust=0))
t <- t + theme_grey(base_size=base_size)
t <- t + labs(x="", y="")
t <- t + scale_x_discrete(expand = c(0,0))
t <- t + theme(axis.ticks=element_blank(), axis.text.x=element_text(size=base_size, angle=330, hjust = 0, colour="grey50"))
t = t + ggtitle("cluster composition")
t
plotly::ggplotly(t)

filename = paste(Plot_folder,"cluster composition_with_PCA.jpeg")
jpeg(filename = filename, width = 1080, height = 1080, quality = 500)
t
dev.off()

for (i in 1:number_of_clusters){
  tofile = data[which(clustertags == i), c(1,2,4:length(data))]
  write.xlsx2(tofile, paste(Plot_folder, "cluster_with_PCA", toString(i), ".xlsx"), col.names = TRUE)
}
