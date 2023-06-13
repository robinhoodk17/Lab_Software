library(reshape2)
library(readxl)
library(Hmisc)
library(igraph)
library(plotly)
library(tidyverse)
library(cowplot)
library(grid)
library(gridExtra)
library(ggplot2) # v. 3.1.1
library(tidyr) # v. 0.8.3
library(egg) # v. 0.4.2
library(patchwork) # v. 1.0.0

data = as.data.frame(read_excel(file.choose(), sheet = 1, na = "NA"))

plot <- data %>% 
  mutate(protein=fct_reorder(protein,desc(week_4))) %>% 
  group_by(protein) %>%
  select(protein, week_2, week_4) %>%
  ggplot() + geom_col(aes(x = protein, y = week_4, fill = as.factor(sign(week_4)))) +
 geom_hline(yintercept = 0) + coord_flip() + ylim(-35,45) + theme(legend.position = "none", axis.title.y = element_blank(), axis.text.y = element_blank(), axis.ticks.y = element_blank(), plot.margin = margin(l=.1)) + ylab("% difference vs WT") + xlab("")
plot2 <- data %>%
  mutate(protein=fct_reorder(protein,desc(week_4))) %>% 
  group_by(protein) %>%
  select(protein, week_2, week_4) %>%
  ggplot() + geom_col(aes(x = protein, y = week_2, fill = as.factor(sign(week_2)))) +
  geom_hline(yintercept = 0) + coord_flip() + ylim(-35,45) + theme(legend.position = "none", plot.margin = margin(r=.1)) + ylab("% difference vs WT") + xlab("")

ggarrange(plot2, plot, nrow=1)
