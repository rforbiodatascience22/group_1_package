#' dna_to_rna
#'
#' @description
#' Convert a DNA sequence into a RNA sequence by replacing the Thymines (T) in
#' Uracil (U) present in the given sequence.
#' @param dna_seq The DNA sequence that is going to be converted into RNA.
#'
#' @return Sequence provided converted into RNA.
#' @export
#'
#' @examples
#' dna_seq = "AGAGTTTGATCCTGGCTCAG"
#' dna_to_rna(dna_seq)
rna_seq <- function(dna_seq){
  converted_seq <- gsub("T", "U", dna_seq)
  return(converted_seq)
}
