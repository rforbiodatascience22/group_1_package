#' Title: Using the codon table identify the codons and their respective amino acid, return the aminoacids
#'
#' @param codons codons from F3
#' @return amino_seq 1 letter code AA
#' @export
#'
codon2amino<- function(codons){
  data("codon_table")
  amino_seq <- paste0(codon_table[codons], collapse = "")
  return(amino_seq)
}
