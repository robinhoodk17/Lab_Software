library(cvequality)
library(readxl)

#PLease enter here the name of the file with the control samples (remember to change all \ characters)
file = "C:/Users/rodrigudi/Documents/projects/R codes/countsperimage.xlsx"




#PLease enter here the name of the folder where you wish to save the plots (remember to change all \ characters)
Plot_folder = "C:/Users/rodrigudi/Documents/projects/R codes/clustering analysis/young only graphs/"


df = read_excel(file)

h <- asymptotic_test(df[[2]], df[[1]])$p

for(x in df[3:length(df)]) {
  
  h <- c( h, asymptotic_test(x, df[[1]])$p)
  
}

names(h) <- names(df[2:length(df)])
return(h)