#rna<-"AUGGCCAUGGCGCCCAGAACUGAGAUCAAUAGUACCCGUAUUAACGGGUGA"
#protein<-rna.to.protein(rna)
#cat(rna, "translates to", protein)

rna.to.protein<-function(rna){
  protein<-""
  i<-1
  #while(i<nchar(rna)-1 &&
   #       substr(rna,i,i+2)!="AUG"){
  #  i<-i+1
  #}
  #i<-i+3
  while(i<nchar(rna)-1 && substr(rna,i,i+2)!="UAA" &&
          substr(rna,i,i+2)!="UAG" &&
          substr(rna,i,i+2)!="UGA"){
    codon<-substr(rna,i,i+2)
    protein<-paste(protein,codon.to.amino.acid(codon),sep="")
    i<-i+3
  }
  return(protein)
}
codon.to.amino.acid<-function(codon){
  if (codon == "UUU") {return ("F")}
  else if (codon == "UUC") {return ("F")}
  else if (codon == "UUA") {return ("L")}
  else if (codon == "UUG") {return ("L")}
  else if (codon == "UCU") {return ("S")}
  else if (codon == "UCC") {return ("S")}
  else if (codon == "UCA") {return ("S")}
  else if (codon == "UCG") {return ("S")}
  else if (codon == "UAU") {return ("Y")}
  else if (codon == "UAC") {return ("Y")}
  else if (codon == "UAA") {return ("Stop")}
  else if (codon == "UAG") {return ("Stop")}
  else if (codon == "UGU") {return ("C")}
  else if (codon == "UGC") {return ("C")}
  else if (codon == "UGA") {return ("Stop")}
  else if (codon == "UGG") {return ("W")}
  else if (codon == "CUU") {return ("L")}
  else if (codon == "CUC") {return ("L")}
  else if (codon == "CUA") {return ("L")}
  else if (codon == "CUG") {return ("L")}
  else if (codon == "CCU") {return ("P")}
  else if (codon == "CCC") {return ("P")}
  else if (codon == "CCA") {return ("P")}
  else if (codon == "CCG") {return ("P")}
  else if (codon == "CAU") {return ("H")}
  else if (codon == "CAC") {return ("H")}
  else if (codon == "CAA") {return ("Q")}
  else if (codon == "CAG") {return ("Q")}
  else if (codon == "CGU") {return ("R")}
  else if (codon == "CGC") {return ("R")}
  else if (codon == "CGA") {return ("R")}
  else if (codon == "CGG") {return ("R")}
  else if (codon == "AUU") {return ("I")}
  else if (codon == "AUC") {return ("I")}
  else if (codon == "AUA") {return ("I")}
  else if (codon == "AUG") {return ("M")}
  else if (codon == "ACU") {return ("T")}
  else if (codon == "ACC") {return ("T")}
  else if (codon == "ACA") {return ("T")}
  else if (codon == "ACG") {return ("T")}
  else if (codon == "AAU") {return ("N")}
  else if (codon == "AAC") {return ("N")}
  else if (codon == "AAA") {return ("K")}
  else if (codon == "AAG") {return ("K")}
  else if (codon == "AGU") {return ("S")}
  else if (codon == "AGC") {return ("S")}
  else if (codon == "AGA") {return ("R")}
  else if (codon == "AGG") {return ("R")}
  else if (codon == "GUU") {return ("V")}
  else if (codon == "GUC") {return ("V")}
  else if (codon == "GUA") {return ("V")}
  else if (codon == "GUG") {return ("V")}
  else if (codon == "GCU") {return ("A")}
  else if (codon == "GCC") {return ("A")}
  else if (codon == "GCA") {return ("A")}
  else if (codon == "GCG") {return ("A")}
  else if (codon == "GAU") {return ("D")}
  else if (codon == "GAC") {return ("D")}
  else if (codon == "GAA") {return ("E")}
  else if (codon == "GAG") {return ("E")}
  else if (codon == "GGU") {return ("G")}
  else if (codon == "GGC") {return ("G")}
  else if (codon == "GGA") {return ("G")}
  else if (codon == "GGG") {return ("G")}
  else {return ("*")}
  
}
#repeat {
#  rna <- scan(file="",what="character",n=1)
#  if (length(rna) == 0) break
#  protein <- rna.to.protein(rna)
#  cat(rna ,"translates to",protein)
#}
RNA <- scan(file="C:/Users/ASUS/Desktop/rosalind_prot.txt",what="character")
for (rna in RNA) {
  protein <- rna.to.protein(rna)
  cat(rna ,"translates to",protein ,"\n")
}
