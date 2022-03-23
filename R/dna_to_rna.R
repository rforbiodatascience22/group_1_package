#' Convert DNA to RNA
#'
#' @description
#' Convert a DNA sequence into a RNA sequence by replacing the Thymines (T) by
#' Uracil (U) present in the given sequence.
#' @param dna_seq The DNA sequence that is going to be converted into RNA.
#'
#' @return Sequence provided converted into RNA.
#' @export
#'
#' @examples
#' dna_seq = "AGAGTTTGATCCTGGCTCAG"
#' dna_to_rna(dna_seq)
dna_to_rna <- function(dna_seq){
  rna_seq <- gsub("T", "U", dna_seq)
  return(rna_seq)
}
