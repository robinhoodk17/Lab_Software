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

data = "C:/Users/rodrigudi/Documents/projects/Diana's rnaseq/GSM2388132_WT_9771_RSEM.genes.results.txt/GSM2388132_WT_9771_RSEM.genes.results - Copy.xlsx"


#PLease enter here the name of the folder where you wish to save the plots (remember to change all \ characters)
Plot_folder = "C:/Users/rodrigudi/Documents/projects/R codes/"

df = read_excel(data)

x = gsub("\\\\", "/", readClipboard())