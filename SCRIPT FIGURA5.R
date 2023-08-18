if(!require(pacman)) install.packages("pacman")
library(pacman)
install.packages("mapping")
library(mapping)

pacman::p_load(dplyr,ggplot2,car,rstatix,lmtest,ggpubr)
library(tidyverse)
library(vegan)
library(dendextend)
library(ggrepel)
library(factoextra)
library(ggdendro)

dados<- read.csv("EXvariaveis ambientais.csv", sep=";", header = T)
rownames(dados)<- paste(c("JPE","REC","QUE", "SLI","MSJ","ILH", "PSE", "LIN", 
                          "STE", "SMM", "NIG", "UBA", "SAL", "RGR",
                          "PER", "MOR", "SFS", "SBS"))

dados1<-dados[c(10:18),c(2,5,7)]

#total
g1<- ggplot(data = dados1, mapping = aes(x=Latitude, y=Diversity)) +
  geom_point(size=2) +
  geom_label_repel(aes(label = rownames(dados1))) +
  theme_bw() +
  theme(text = element_text(size = 1)) +
  geom_smooth(method = "lm", col="red") +
  stat_regline_equation(aes(label=paste(..eq.label..,..rr.label..,
                                        sep = "~~")),label.y=3)+
  theme_classic()
g1

g2<- ggplot(data = dados1, mapping = aes(x=Latitude, y=Richness)) +
  geom_point(size=2) +
  geom_label_repel(aes(label = rownames(dados1))) +
  theme_bw() +
  theme(text = element_text(size = 1)) +
  geom_smooth(method = "lm", col="red") +
  stat_regline_equation(aes(label=paste(..eq.label..,..rr.label..,
                                        sep = "~~")),label.y=20)+
  theme_classic()
g2

#para koino
dados2<- read.csv("EXbiologia.csv", sep=";", header = T)
rownames(dados2)<- paste(c("JPE","REC","QUE", "SLI","MSJ","ILH", "PSE", "LIN", 
                           "STE", "SMM", "NIG", "UBA", "SAL", "RGR",
                           "PER", "MOR", "SFS", "SBS"))
dados22<-dados2[c(10:18),c(2,3,4,6,7)]

g3<- ggplot(data = dados22, mapping = aes(x=Latitude, y=Diversity.koinobionts)) +
  geom_point(size=2) +
  geom_label_repel(aes(label = rownames(dados22))) +
  theme_bw() +
  theme(text = element_text(size = 1)) +
  geom_smooth(method = "lm", col="red") +
  stat_regline_equation(aes(label=paste(..eq.label..,..rr.label..,
                                        sep = "~~")),label.y=1.7)+
  theme_classic()
g3

g3<- ggplot(data = dados22, mapping = aes(x=Latitude, y=Richness.koinobionts)) +
  geom_point(size=2) +
  geom_label_repel(aes(label = rownames(dados22))) +
  theme_bw() +
  theme(text = element_text(size = 1)) +
  geom_smooth(method = "lm", col="red") +
  stat_regline_equation(aes(label=paste(..eq.label..,..rr.label..,
                                        sep = "~~")),label.y=7)+
  theme_classic()
g3

#pra idio

g4<- ggplot(data = dados22, mapping = aes(x=Latitude, y=Diversity.idiobionts)) +
  geom_point(size=2) +
  geom_label_repel(aes(label = rownames(dados22))) +
  theme_bw() +
  theme(text = element_text(size = 1)) +
  geom_smooth(method = "lm", col="red") +
  stat_regline_equation(aes(label=paste(..eq.label..,..rr.label..,
                                        sep = "~~")),label.y=1.7)+
  theme_classic()
g4

g4<- ggplot(data = dados22, mapping = aes(x=Latitude, y=Richness.idiobionts)) +
  geom_point(size=2) +
  geom_label_repel(aes(label = rownames(dados22))) +
  theme_bw() +
  theme(text = element_text(size = 1)) +
  geom_smooth(method = "lm", col="red") +
  stat_regline_equation(aes(label=paste(..eq.label..,..rr.label..,
                                        sep = "~~")),label.y=16)+
  theme_classic()
g4
