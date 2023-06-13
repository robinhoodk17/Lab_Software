library(readxl)
library(plotly)

dataframe = read_excel(file.choose(), sheet = 1)

peaks_function <- function(df, variable = NULL, binwidth = NULL, xcoord = NULL, ycoord = NULL, xlabel = "", ylabel = "density")
{
  if(names(df)[[2]] != "group") 
  {
    print("your first column must have the sample number, the second one must be named group and must contain which group the sample belongs to (e.g. WT or KO)")
    return()
  }
  group <- unique(df$group)
  for(i in (1:length(group)))
  {
    first = df[df$group == group[i],]
    if(is.null(variable))
    {
      variable = names(df)[3]
    }
    meanofsample = mean(first[[variable]])
    first = cbind(first[variable], first["group"])
    names(first) = c("value","group")
    #Calculating where to put the x and y labels.
    if(is.null(xcoord))
    {
      xcoordforplot = (min(first[1], na.rm = TRUE) + max(first[1], na.rm = TRUE))/2
    }
    else
    {
      xcoordforplot = xcoord
    }
    if(is.null(ycoord))
    {
      ycoordforplot = max(density(first[[1]], na.rm = TRUE)$y)
    }
    else
    {
      ycoordforplot = ycoord
    }
    
    meanofsample
    
    #get the maximum denstity for each group and then divide them
    if(!is.null(binwidth))
    {
      dens <- density(first[[1]], na.rm =TRUE, bw = binwidth)
      max = dens$x[dens$y == max(dens$y)]
      #For the top graph.
      peaklabel1 = paste("peak ",group[i], " = ", round(max,4))
      meanlabel1 = paste("mean ",group[i], " = ", round(meanofsample,4))
      h = ggplot(first, aes(x = x))
      h = h + geom_density(aes(x = value), color = "black", size = 1.5, bw = binwidth)
    }
    else
    {
      dens <- density(first[[1]], na.rm =TRUE)
      max = dens$x[dens$y == max(dens$y)]
      #For the top graph.
      peaklabel1 = paste("peak ",group[i], " = ", round(max,4))
      meanlabel1 = paste("mean ",group[i], " = ", round(meanofsample,4))
      h = ggplot(first, aes(x = x))
      h = h + geom_density(aes(x = value), color = "black", size = 1.5)
      
    }
    h = h + geom_label( aes(x=xcoordforplot, y=ycoordforplot, label = group), color="black")
    #h = h + geom_label(aes(x = xcoordforplot,y=ycoordforplot*.5,label = paste(peaklabel1, meanlabel1, sep = "\n")), color =  "#69b3a2")
    h = h + ggtitle(variable)
    h = h + xlab(xlabel) + ylab(ylabel)
    h = h + geom_vline(xintercept = max, color = "#69b3a2",size = .8)
    h = h + geom_label(aes(x = max, y = ycoordforplot*.5, label = peaklabel1), color =  "#69b3a2")
    h = h + geom_vline(xintercept = meanofsample, color = "#69b3a2",size = .8)
    h = h + geom_label(aes(x = meanofsample, y = ycoordforplot*.3, label = meanlabel1), color =  "#69b3a2")
    print(h)
    print(c(group[i], max))
  }
}

peaks_function(dataframe)