
#Diversidade de Shannon
teste<- read.table("Shannon e equitabilidade.txt", sep= "\t", header = T)

install.packages("vegan")
library(vegan)
teste<-teste[,-1]

Shannon<- diversity(teste)
Shannon

#Equitabilidade
Pielou<- Shannon/log(specnumber(teste))
Pielou

#Diversidade Beta (Turnover e aninhamento)

install.packages("tidyverse")
install.packages("betapart")
install.packages("wesanderson")
install.packages("reshape2")

library(tidyverse)
library(betapart)
library(wesanderson)
library(reshape2)

#sem JPE, SLI, MSJ
teste<- read.table("Diversidade beta.txt", sep= "\t", header = T)
teste<- ifelse(teste > 0, 1, 0)
teste<-teste[,-1]
rownames(teste)<- paste(c("REC","QUE", "ILH", "PSE", "LIN", 
                          "STE", "SMM", "NIG", "UBA", "SAL", "RGR",
                          "PER", "MOR", "SFS", "SBS"))

#beta diversidade total
beta_total <- beta.multi(teste,
                         index.family = "sorensen")
beta_total

#beta diversidade par a par
beta_par <- beta.pair(teste,
                      index.family = "sorensen")

beta_par

get_upper_tri <- function(cormat){
  cormat[lower.tri(cormat)]<- NA
  return(cormat)
}

sim <- get_upper_tri(as.matrix(beta_par$beta.sim))

sor <- get_upper_tri(as.matrix(beta_par$beta.sor))

sne <- get_upper_tri(as.matrix(beta_par$beta.sne))

melted_cormat <- reshape2::melt(sim)
melted_cormat2 <- reshape2::melt(sor)
melted_cormat3 <- reshape2::melt(sne)

melted_cormat <- rbind(melted_cormat2, melted_cormat, melted_cormat3)

melted_cormat$metric <- factor(rep(c("Total", "Turnover", "Nestedness"), 
                                   each = nrow(melted_cormat2)), 
                               c("Total", "Turnover", "Nestedness"))

pal <- wes_palette("Zissou1", 100, type = "continuous")

#--------------------------------------------------------------------------
g <- ggplot(data = melted_cormat, aes(Var2, Var1, fill = value))+
  geom_tile(color = "white")+
  scale_fill_gradientn(colours = pal, 
                       name="Beta diversity") +
  theme_minimal()+ 
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 0),
        text = element_text(size = 10)) +
  coord_fixed() +
  xlab("") +
  ylab("") +
  facet_wrap(metric ~.) +
  ggtitle("Componentes da beta diversidade entre localidades")
g
