library("seqinr")

fas2<-read.fasta("C:/Users/ASUS/Desktop/3.txt", forceDNAtolower = FALSE)
b<-count(fas2[[1]],wordsize=4, alphabet=s2c("ACTG"))
as.numeric(b)
