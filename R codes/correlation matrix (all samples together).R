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
  install.packages("ggplot2")
  install.packages("readxl")
  install.packages("reshape2")
  install.packages("plyr")
  install.packages("scales")
  install.packages("mice")
})

#PLease enter here the name of the file with all the samples (remember to change all \ characters)
Treat_file = "C:/Users/rodrigudi/Documents/projects/R codes/KO - copy.xlsx"


#PLease enter here the name of the file with all the samples (remember to change all \ characters)
WT_file = "C:/Users/rodrigudi/Documents/projects/R codes/KO - copy.xlsx"


#PLease enter here the name of the folder where you wish to save the plots (remember to change all \ characters)
Plot_folder = "C:/Users/rodrigudi/Documents/projects/R codes/"

WT_data = read_excel(WT_file)
Treat_data = read_excel(Treat_file)


df = rbind(WT_data, Treat_data)

#reading the excel file and selecting all columns except the first one, which should have the sample numbers
df = df[2:length(df)]

#the base size for graphing everything
base_size = 15




#creating the correlation matrix
corr_matrix = rcorr(as.matrix(df), type = "spearman")

#separating the correlation matrix into the r and p values. r is correlation coefficient, in case of pearson correlation and p is p value.
r = melt(corr_matrix$r)
p = melt(corr_matrix$P)

#substituting all p values less than .05 by 0, so that  we can color by significant and non-significant values
p$value[p$value > .05] <- .05

#formatting r and p to plot them with ggplot
r = ddply(r, .(Var2), transform, value = value)
p = ddply(p, .(Var2), transform, value = value)


#graphing the corr matrix
(q = ggplot(p, aes(Var2, Var1)) + geom_tile(aes(fill = value), colour = "white")+ scale_fill_gradient(low = c("red", "red3", "darkorchid1", "darkorchid3","green1","green3", "darkgoldenrod1", "darkgoldenrod4"), high = c("white"), space = "Lab")+  geom_text(data = r, aes(label = round(value,2)), size = base_size/5))
q = q + theme_grey(base_size=base_size)
q = q + labs(x="", y="")
q = q + scale_x_discrete(expand = c(0,0))
q = q + theme(axis.ticks=element_blank(), axis.text.x=element_text(size=base_size, angle=330, hjust = 0, colour="grey50"))
q = q + ggtitle("correlation matrix")
q


filename = paste(Plot_folder,"corr_matrix.jpeg")
jpeg(filename = filename, width = 1080*(base_size/15), height = 1080*(base_size/15), quality = 200)
q
dev.off()

