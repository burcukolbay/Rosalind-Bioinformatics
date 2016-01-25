codon2aa <- c(
  "UUU" = "F", # Phe
  "UUC" = "F", # Phe
  "UUA" = "L", # Leu
  "UUG" = "L", # Leu
  "UCU" = "S", # Ser
  "UCC" = "S", # Ser
  "UCA" = "S",
  "UCG" = "S",
  "UAU" = "Y",
  "UAC" = "Y",
  "UAA" = "Stop",
  "UAG" = "Stop",
  "UGU" = "C",
  "UGC" = "C",
  "UGA" = "Stop",
  "UGG" = "W",
  "CUU" = "L",
  "CUC" = "L",
  "CUA" = "L",
  "CUG" = "L",
  "CCU" = "P",
  "CCC" = "P",
  "CCA" = "P",
  "CCG" = "P",
  "CAU" = "H",
  "CAC" = "H",
  "CAA" = "Q",
  "CAG" = "Q",
  "CGU" = "R",
  "CGC" = "R",
  "CGA" = "R",
  "CGG" = "R",
  "AUU" = "I",
  "AUC" = "I",
  "AUA" = "I",
  "AUG" = "M",
  "ACU" = "T",
  "ACC" = "T",
  "ACA" = "T",
  "ACG" = "T",
  "AAU" = "N",
  "AAC" = "N",
  "AAA" = "K",
  "AAG" = "K",
  "AGU" = "S",
  "AGC" = "S",
  "AGA" = "R",
  "AGG" = "R",
  "GUU" = "V",
  "GUC" = "V",
  "GUA" = "V",
  "GUG" = "V",
  "GCU" = "A",
  "GCC" = "A",
  "GCA" = "A",
  "GCG" = "A",
  "GAU" = "D",
  "GAC" = "D",
  "GAA" = "E", # Glu
  "GAG" = "E", # Glu
  "GGU" = "G", # Gly
  "GGC" = "G", # Gly
  "GGA" = "G", # Gly
  "GGG" = "G" # Gly
)
unlisttable<-table(unlist(sapply(codon2aa, paste, collapse="")))
#aminoacid<-"MA"
possible_rna_strings<-function(aminoacid){
  n<-sum(unlisttable["Stop"])%%1000000
  for (i in s2c(aminoacid)){
    n<-(sum(unlisttable[i])*n%%1000000)
  }
  
  return(n)
}

AMI<-scan(file="C:/Users/ASUS/Desktop/rosalind_mrna.txt",what="character")
for (aminoacid in AMI){
  n<-possible_rna_strings(aminoacid)%%1000000
  print(n%%1000000)
}
