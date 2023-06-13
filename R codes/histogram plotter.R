library(readxl)
library(ggplot2)

data = as.data.frame(read_excel(file.choose(), sheet = 1, na = "NA"))

ggplot(data, aes(x= sizes)) + geom_histogram()