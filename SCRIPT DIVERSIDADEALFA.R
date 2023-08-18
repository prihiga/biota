library(vegan)
library(tidyverse)
library(forcats)
library(iNEXT)

comunidade <- read.table("EXriquezaidio.csv", sep=";", header= T)
comunidade<- comunidade[,-1]
rownames(comunidade)<- paste(c("REC","QUE", "ILH", "PSE", "LIN", 
                               "STE", "SMM", "NIG", "UBA", "SAL", "RGR",
                               "PER", "MOR", "SFS", "SBS"))
# RIQUEZA
Riqueza <- specnumber(comunidade)
Riqueza

Riqueza_total <- specnumber(colSums(comunidade))
Riqueza_total

# Shannon
Shannon <- diversity(comunidade, index = "shannon")
Shannon

#--------------------------------------------------------------------------
comunidade2 <- read.table("EXriquezaceno.csv", sep=";", header= T)
comunidade2<- comunidade2[,-1]
rownames(comunidade2)<- paste(c("REC","QUE", "ILH", "PSE", "LIN", 
                               "STE", "SMM", "NIG", "UBA", "SAL", "RGR",
                               "PER", "MOR", "SFS", "SBS"))
# RIQUEZA
Riqueza <- specnumber(comunidade2)
Riqueza

Riqueza_total <- specnumber(colSums(comunidade2))
Riqueza_total

# Shannon
Shannon <- diversity(comunidade2, index = "shannon")
Shannon
