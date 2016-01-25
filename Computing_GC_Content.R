library("seqinr")
fas<-read.fasta("C:/Users/ASUS/Desktop/rosalind_gc.txt",forceDNAtolower = FALSE)
first<-GC(fas[[1]])*100
second<-GC(fas[[2]])*100
third<-GC(fas[[3]])*100
forth<-GC(fas[[4]])*100
fifth<-GC(fas[[5]])*100
sixth<-GC(fas[[6]])*100
results<-data.frame(matrix(c(first,second,third,forth,fifth,sixth),nrow=6,ncol=1))
colnames(results)<-c("var")
results
colMax <- function(results) sapply(results, max, na.rm = TRUE)
colMax(results)
