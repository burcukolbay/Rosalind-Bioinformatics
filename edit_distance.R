library(stringdist)
library(seqinr)


fas2<-read.fasta("C:/Users/ASUS/Desktop/rosalind_edit.txt", forceDNAtolower = FALSE)
string1<-c2s(fas2[[1]])
string2<-c2s(fas2[[2]])
stringdist(string1,string2,method="lv")
