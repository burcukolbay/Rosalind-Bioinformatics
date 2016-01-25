dna<-"GATGGAACTTGACTACGTAAATT";
rna<-dna.to.rna(dna);
cat(dna, "translates to", rna);

dna.to.rna <- function(dna) {
  rna<-""
  i<- 1
  while(i<nchar(dna)-1){
   
      convertion<-substr(dna,i,i)
      
      rna<-paste(rna,conv.func(convertion),sep="")
      i<-i+1
    }
   return(rna) 
  }
  conv.func<- function(convertion)
  {
   if (convertion == "T") return("U")
   else if(convertion == "A") return ("A")
   else if(convertion == "G") return ("G")
   else if(convertion == "C") return ("C")
   else return ("*")
  }
  #repeat {
   # dna <- scan(file="",what="character",n=1)
   # if (length(dna) == 0) break
   # rna <- dna.to.rna(dna)
  #  cat(dna ,"translates to",rna)
#  }
#dna.file <- commandArgs( trailingOnly =TRUE )[1]
DNA <- scan(file="C:/Users/ASUS/Desktop/rosalind_rna.txt",what="character")
for (dna in DNA) {
  rna <- dna.to.rna(dna)
  cat(dna ,"translates to",rna ,"\n")
}
