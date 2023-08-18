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

par(mar=c(1,1,1,1))

g1<- ggplot(data = dados, mapping = aes(x=Latitude, y=Diversity)) +
  geom_point(size=2) +
  geom_label_repel(aes(label = rownames(dados))) +
  theme_bw() +
  theme(text = element_text(size = 1)) +
  geom_smooth(method = "lm", col="red") +
  stat_regline_equation(aes(label=paste(..eq.label.., ..adj.rr.label..,
                                        sep = "*plain(\",\")~~")))+
  theme_classic()
g1

g2<- ggplot(data = dados, mapping = aes(x=Latitude, y=Richness)) +
  geom_point() +
  geom_label_repel(aes(label = rownames(dados))) +
  theme_bw() +
  theme(text = element_text(size = 1)) +
  geom_smooth(method = "lm", col="red") +
  stat_regline_equation(aes(label=paste(..eq.label.., ..adj.rr.label..,
                                        sep = "*plain(\",\")~~")))+
  theme_classic()
g2

#ceno e idio
dados1<- read.csv("EXbiologia.csv", sep=";", header = T)
rownames(dados1)<- paste(c("JPE","REC","QUE", "SLI","MSJ","ILH", "PSE", "LIN", 
                          "STE", "SMM", "NIG", "UBA", "SAL", "RGR",
                          "PER", "MOR", "SFS", "SBS"))

par(mar=c(1,1,1,1))

g3<- ggplot(data = dados1, mapping = aes(x=Latitude, y=Diversity.koinobionts)) +
  geom_point(size=2) +
  geom_label_repel(aes(label = rownames(dados1))) +
  theme_bw() +
  theme(text = element_text(size = 1)) +
  geom_smooth(method = "lm", col="red") +
  stat_regline_equation(aes(label=paste(..eq.label.., ..adj.rr.label..,
                                        sep = "*plain(\",\")~~")))+
  theme_classic()
g3

g4<- ggplot(data = dados1, mapping = aes(x=Latitude, y=Richness.koinobionts)) +
  geom_point() +
  geom_label_repel(aes(label = rownames(dados1))) +
  theme_bw() +
  theme(text = element_text(size = 1)) +
  geom_smooth(method = "lm", col="red") +
  stat_regline_equation(aes(label=paste(..eq.label.., ..adj.rr.label..,
                                        sep = "*plain(\",\")~~")))+
  theme_classic()
g4

g5<- ggplot(data = dados1, mapping = aes(x=Latitude, y=Diversity.idiobionts)) +
  geom_point(size=2) +
  geom_label_repel(aes(label = rownames(dados1))) +
  theme_bw() +
  theme(text = element_text(size = 1)) +
  geom_smooth(method = "lm", col="red") +
  stat_regline_equation(aes(label=paste(..eq.label.., ..adj.rr.label..,
                                        sep = "*plain(\",\")~~")))+
  theme_classic()
g5

g6<- ggplot(data = dados1, mapping = aes(x=Latitude, y=Richness.idiobionts)) +
  geom_point() +
  geom_label_repel(aes(label = rownames(dados1))) +
  theme_bw() +
  theme(text = element_text(size = 1)) +
  geom_smooth(method = "lm", col="red") +
  stat_regline_equation(aes(label=paste(..eq.label.., ..adj.rr.label..,
                                        sep = "*plain(\",\")~~")))+
  theme_classic()
g6
