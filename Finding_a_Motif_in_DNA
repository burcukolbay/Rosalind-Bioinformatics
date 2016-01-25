#sample<-"GATATATGCATATACTT
#ATAT"
library("seqinr")
install.packages("rvHPDT")
library("rvHPDT")
sample<-read.table("C:/Users/ASUS/Desktop/rosalind_subs.txt")
sample2<-convert.factors.to.strings.in.dataframe(sample)
sequence1<-sample2[1,]
motif1<-sample2[2,]
seq.l<-strsplit(sequence1,"")[[1]]
mot.l<-strsplit(motif1,"")[[1]]
comps<-length(seq.l)-length(mot.l)
local<-vector()
for(i in 1:comps){
  if(sum(seq.l[i:(i+(length(mot.l)-1))]==mot.l)==length(mot.l)) {
    local<-c(local,i)
}
}
local
write.table(local, "C:/Users/ASUS/Desktop/AB.txt",row.names=FALSE,col.names=FALSE)
