samp<-"T A G C 2"

samp <- scan(file="C:/Users/ASUS/Desktop/rosalind_lexf.txt",what="character")

library(seqinr)
b<-gsub(" ", "", samp, fixed = TRUE)
b1<-c2s(b)

#install.packages('gtools')
library(gtools)
firstpart<-substr(b1,1,nchar(b1)-1)
#fpnew<-gsub(" ", "", firstpart, fixed = TRUE)
secondpart<-substr(b1,nchar(b1),nchar(b1))
firstpart1<-s2c(firstpart)
newsecond<-as.numeric(unlist(secondpart))
d2<-expand.grid(rep(list(firstpart1),newsecond))#
d3<-d2[,c(newsecond:1)]#
dfperm1<-paste(d3$Var2,d3$Var1,sep="")#
write.table(dfperm1, "C:/Users/ASUS/Desktop/RR.txt",col.names=FALSE, row.names=FALSE,quote=FALSE)
