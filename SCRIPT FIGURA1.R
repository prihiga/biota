install.packages ("sf") 
library(sf)  

install.packages("maps")
library(maps)

ls("package:maps")

install.packages("mapdata")
library(mapdata)

ls("package:mapdata")

par(mar=c(1, 1, 1, 1))

map("worldHires", "brazil",fill=TRUE, col="grey")

map.axes(cex.axis=0.6)

map.scale(x=-44, y=-28, ratio=FALSE, cex=0.6)

map(,, add=TRUE)

points(-34.85, -7.1, pch=20, col="red") # João Pessoa
text(-34, -7.1, "1", cex=0.5) # João Pessoa
points(-34.866667, -8.05, pch=20, col="red") #Recife
text(-34, -8.05,"2", cex=0.5) #Recife
points(-36.466667, -9.316667, pch=20, col="red") #Quebrangulo
text(-35, -10,"3",cex=0.5) #Quebrangulo
points(-37.433333, -11.35, pch=20, col="red") #Santa Luzia do Itanhy
text(-36.5, -11.35,"4", cex=0.5) #Santa Luzia do Itanhy
points(-38.5, -12.966667, pch=20, col="red") #Mata São João
text(-37.5, -12.966667,"5", cex=0.5) #Mata São João
points(-39.05, -14.783333, pch=20, col="red") #Ilhéus
text(-38, -14.783333,"6", cex=0.5) #Ilhéus
points(-39.166667, -16.383333, pch=20, col="red") #Porto Seguro
text(-38, -16.383333,"7", cex=0.5) #Porto Seguro
points(-39.85, -18.7, pch=20, col="red") #Linhares
text(-39, -18.7,"8", cex=0.5) #Linhares
points(-40.6, -19.933333, pch=20, col="red") #Santa Teresa
text(-39, -19.933333,"9", cex=0.5) #Santa Teresa
points(-41.666667, -21.833333, pch=20, col="red") #Santa Maria Madalena
text(-40, -21.833333,"10", cex=0.5) #Santa Maria Madalena
points(-43.45, -22.75, pch=20, col="red") #Nova Iguaçu
text(-43, -23.5,"11", cex=0.5) #Nova Iguaçu
points(-44.833333, -23.333333, pch=20, col="red") #Ubatuba
text(-45, -22,"12", cex=0.5) #Ubatuba
points(-45.833333, -23.516667, pch=20, col="red") #Salesópolis
text(-45.5, -24.5,"13", cex=0.5) #Salesópolis
points(-48.35, -24.3, pch=20, col="red") #Ribeirão Grande
text(-49.5, -23.5,"14", cex=0.5) #Ribeirão Grande
points(-47.2, -24.516667, pch=20, col="red") #Peruíbe
text(-47, -25,"15", cex=0.5) #Peruíbe
points(-48.833333, -25.466667, pch=20, col="red") #Morretes
text(-50, -25,"16", cex=0.5) #Morretes
points(-48.666667, -26.216667, pch=20, col="red") #São Francisco do Sul
text(-48, -26.216667,"17", cex=0.5) #São Francisco do Sul
points(-49.3, -26.316667, pch=20, col="red") #São Bento do Sul
text(-50.5, -26.316667,"18", cex=0.5) #São Bento do Sul

