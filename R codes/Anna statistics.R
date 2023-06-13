library(readxl)
library(xlsx)

defaultW <- getOption("warn")
options(warn = -1)

dataframe = read_excel(file.choose(), .name_repair = "minimal")

WTname = names(dataframe)[1]
WT1 = dataframe[[1]][1]
WT2 = dataframe[[1]][2]
WT3 = dataframe[[1]][3]
WT4 = dataframe[[1]][4]
KOname = names(dataframe)[length(names(dataframe))]
KO1 = dataframe[[KOname]][1]
KO2 = dataframe[[KOname]][2]
KO3 = dataframe[[KOname]][3]
KO4 = dataframe[[KOname]][4]


for(i in (2:length(names(dataframe))))
{
  if(names(dataframe)[i] == WTname)
  {
    WT1 = c(WT1, dataframe[[i]][1])
    WT2 = c(WT2, dataframe[[i]][2])
    WT3 = c(WT3, dataframe[[i]][3])
    WT4 = c(WT4, dataframe[[i]][4])
  }
  else
  {
    KO1 = c(KO1, dataframe[[i]][1])
    KO2 = c(KO1, dataframe[[i]][2])
    KO3 = c(KO1, dataframe[[i]][3])
    KO4 = c(KO1, dataframe[[i]][4])
  }
}

WTvsKO = 0
WTvsWT10T = 0
WtvsWTins = 0
WTvsWTdouble = 0
KOvsKO10T = 0
KOvsKOins = 0
KOvsKOdouble = 0

print(paste(WTname," vs ", KOname," ", wilcox.test(WT1, KO1)$p.value, sep = ""))

print(paste(WTname,"1 vs ", WTname,"2 ", wilcox.test(WT1, WT2)$p.value*3, sep = ""))
print(paste(WTname,"1 vs ", WTname,"3 ", wilcox.test(WT1, WT3)$p.value*3, sep = ""))
print(paste(WTname,"1 vs ", WTname,"4 ", wilcox.test(WT1, WT4)$p.value*3, sep = ""))

print(paste(KOname,"1 vs ", KOname,"2 ", wilcox.test(KO1, KO2)$p.value*3, sep = ""))
print(paste(KOname,"1 vs ", KOname,"3 ", wilcox.test(KO1, KO3)$p.value*3, sep = ""))
print(paste(KOname,"1 vs ", KOname,"4 ", wilcox.test(KO1, KO4)$p.value*3, sep = ""))

options(warn = defaultW)
