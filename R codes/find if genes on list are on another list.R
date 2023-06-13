library(readxl)
library(xlsx)

candidate_folder <- choose.dir(caption = "choose the folder with your candidates")
result_folder <- choose.dir(caption = "choose the folder where you want to store your results")
temp = list.files(pattern="*.xlsx", path = candidate_folder)
temp = lapply(temp,function(x) paste(candidate_folder,"\\", x,sep = ""))
df.list <- lapply(temp, read_excel)
names(df.list) = tools::file_path_sans_ext(list.files(pattern="*.xlsx", path = candidate_folder))

target =as.data.frame(read_excel(file.choose(), sheet = 1, na = "NA"))
target[is.na(target)] <- 1

names(target)[names(target)=="symbol"] <- "Symbol"

result_DF <- data.frame(Symbol = character(), pathways = character(), count = integer(), padj = double(), log2change = double()) 

print_regulated_genes <- function(candidates, target, pvalue = .1){
  target <- target[target$padj<.15,]
  #this first for is to check through all the candidate tables
  for(i in 1:length(candidates))
  {
    #an array with only the genes from the candidate pathway we are checking
    current_DF <- candidates[[i]]$Symbol
    #if we find the first gene in the target 
    if(current_DF[1] %in% target$Symbol)
    {
      #if the same gene had been previously found in another pathway we increase the number of pathways it is found in, and add the name of the pathway
      if(current_DF[1] %in% result_DF$Symbol)
      {
        result_DF[result_DF$Symbol==current_DF[1],][3] = result_DF[result_DF$Symbol==current_DF[1],][3] + 1
        result_DF[result_DF$Symbol==current_DF[1],][2] = paste(result_DF[result_DF$Symbol==current_DF[1],][2], names(candidates)[i],sep = " / ")
      }
      else
      {
        #if this is the first time we find this gene, we add the gene, pathway, number of times it has been found (1), and pvalue
        result_DF[nrow(result_DF)+1,] <- data.frame(current_DF[1],names(candidates)[i],1, target$pvalue[target$Symbol==current_DF[1]], target$log2FoldChange
[target$Symbol==current_DF[1]])
      }
    }
    
    for(j in 2:length(current_DF))
    {
      if(current_DF[j-1] != current_DF[j])
      {
        if(current_DF[j] %in% target$Symbol)
        {
          if(current_DF[j] %in% result_DF$Symbol)
          {
            result_DF[result_DF$Symbol==current_DF[j],][3] = result_DF[result_DF$Symbol==current_DF[j],][3] +1
            result_DF[result_DF$Symbol==current_DF[j],][2] = paste(result_DF[result_DF$Symbol==current_DF[j],][2], names(candidates)[i], sep = " / ")
          }
          else
          {
            result_DF[nrow(result_DF)+1,] <- data.frame(current_DF[j],names(candidates)[i],1, target$padj[target$Symbol==current_DF[j]], target$log2FoldChange[target$Symbol==current_DF[j]])
          }
        }
      }
    }
  }
  result_DF <- result_DF[order(result_DF$count, decreasing = TRUE),]
  write.xlsx(result_DF, paste(result_folder,"\\interesting genes.xlsx",sep = ""), sheetName = "Sheet1", 
             col.names = TRUE, row.names = TRUE, append = FALSE)
  return(result_DF)
}


result_DF <- print_regulated_genes(df.list,target)
print("finished")

