#sam<-"AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC";

sam<-scan(file="C:/Users/ASUS/Desktop/rosalind_dna.txt",what="character")


p<-"A"
r<-"C"
s<-"G"
t<-"T"
s2<-gsub(p,"",sam)
s3<-gsub(r,"",sam)
s4<-gsub(s,"",sam)
s5<-gsub(t,"",sam)
numOcc1<-nchar(sam)-nchar(s2)
numOcc2<-nchar(sam)-nchar(s3)
numOcc3<-nchar(sam)-nchar(s4)
numOcc4<-nchar(sam)-nchar(s5)
cat(numOcc1," ",numOcc2," ",numOcc3," ",numOcc4)
