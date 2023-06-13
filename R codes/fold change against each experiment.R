gc()
tryCatch({
  library(Hmisc)
  library(ggplot2)
  library(readxl)
  library(reshape2)
  library(plyr)
  library(scales)
  library(mice)
},error = function(error){
  install.packages("Hmisc")
  install.packages("mice")
  install.packages("ggplot2")
  install.packages("readxl")
  install.packages("reshape2")
  install.packages("plyr")
  install.packages("scales")
})





#PLease enter here the name of the file with the control samples (remember to change all \ characters)
WT_folder = "C:/Users/rodrigudi/Documents/projects/R codes/HSC/WT/"


#PLease enter here the name of the file with the treated samples (remember to change all \ characters)
Treat_folder =  "C:/Users/rodrigudi/Documents/projects/R codes/HSC/KO/"


#PLease enter here the name of the folder where you wish to save the plots (remember to change all \ characters)
Plot_folder =  "C:/Users/rodrigudi/Documents/projects/R codes/HSC/Plot/"




setwd(WT_folder)
WT_file_list = list.files(WT_folder)
WT_data = list(WT_file_list)

setwd(Treat_folder)
Treat_file_list = list.files(Treat_folder)
Treat_data = list(Treat_file_list)

WT_data = data.frame()

Treat_data = data.frame()
sampleid = data.frame()

for (i in 1:length(WT_file_list)){
  setwd(WT_folder)
  WT_temp_data = read_excel(WT_file_list[i])
  setwd(Treat_folder)
  Treat_temp_data = read_excel(Treat_file_list[i])
  Treat_temp_id = Treat_temp_data[1]
  
  WT_temp_data = WT_temp_data[2:length(WT_temp_data)]
  Treat_temp_data = Treat_temp_data[2:length(Treat_temp_data)]
  ####
  WT_temp_means = lapply(WT_temp_data, mean)
  Treat_temp_data = Treat_temp_data/WT_temp_means
  WT_temp_data = WT_temp_data/WT_temp_means
  WT_data = rbind(WT_data,WT_temp_data)
  Treat_data = rbind(Treat_data, Treat_temp_data)
  sampleid = rbind(sampleid, Treat_temp_id)
}

#########   Fold change    ############
#getting the means of the WT, then dividing the Treatment by the mean of the WT to get the fold change. Also the p-values for the
#difference between WT and treated
WTmeans = lapply(WT_data, mean)
Treatmeans = lapply(Treat_data, mean)
pvalues_total = WTmeans
for (i in c(1:length(WTmeans))){
  tryCatch({
    pvalues_total[i] = t.test(WT_data[[i]], Treat_data[[i]])$p.value
  }, error = function(error){
    pvalues_total[i] = 1
  })
}
Foldincrease = Treat_data
Foldincrease = rbind(Treatmeans, Treat_data)
temporal = rbind(pvalues_total, Treat_data)
Foldincrease = Foldincrease/WTmeans
#formatting the data for plotting
Treatmeans = Foldincrease[length(Foldincrease[1]),]
pvalues_total = temporal[length(temporal[1]),]
names(Treatmeans) = names(Foldincrease)
names(pvalues_total) = names(Foldincrease)
Foldincrease = melt(Foldincrease)
Treatmeans = melt(Treatmeans)
pvalues_total = melt(pvalues_total)
#plotting the data
base_size = 9
(u <- ggplot(data = Treatmeans, aes(x = variable, y = value)) + geom_bar(stat = "identity", color = "steelblue", fill = "white") )
u = u + geom_jitter(data = Foldincrease, aes(y =value),binaxis='y', stackdir='center', dotsize=.3, width = .2, height = .001)
u = u + geom_hline(yintercept = 1)
u = u + geom_text(data = pvalues_total, aes(label = round(value,3)), size = 4.5)
u <- u + theme_grey(base_size=base_size)
u <- u + labs(x="", y="")
u <- u + scale_x_discrete(expand = c(0,0))
u <- u + theme(axis.ticks=element_blank(), axis.text.x=element_text(size=base_size*1.8, angle=330, hjust = 0, colour="grey50"))
u = u + ggtitle("Fold change compared to WT")
u


filename = paste(Plot_folder,"Mean_foldchange.jpeg")
jpeg(filename = filename, width = 1080, height = 1080, quality = 200)
u
dev.off()



WTmeans = lapply(WT_data, mean)
Foldincrease = Treat_data/WTmeans
Foldcolors = Treat_data
Foldincrease = as.matrix(Foldincrease)
Foldcolors = as.matrix(Foldcolors)

Fold_r = melt(Foldincrease)
Fold_plot = ddply(Fold_r, .(Var2), transform, value = value)
base_size = 9
(t = ggplot(Fold_plot, aes(Var2, Var1)) + geom_tile(aes(fill = value)) + geom_text(aes(label = round(value,2)), size = 3.5) )
t <- t + scale_fill_gradient2(midpoint = 1, low = c("darkblue","blue"), high = c("orange","red"), mid = "white")
t <- t + theme_grey(base_size=base_size)
t = t + annotate("text", x = 0, y = 1:length(sampleid[[1]]), label = c(sapply(sampleid[[1]], toString)))
t = t + annotate("text", x = -.5, y = 1, label = "")
t <- t + labs(x="", y="")
t <- t + theme(axis.ticks=element_blank(), axis.text.x=element_text(size=base_size*1.8, angle=330, hjust = 0, colour="grey50"))
t = t + ggtitle("Fold change compared to WT")
t

filename = paste(Plot_folder,"Sample_foldchange.jpeg")
jpeg(filename = filename, width = 1080, height = 1080, quality = 200)
t
dev.off()