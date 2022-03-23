#' Title: Start codon RNA sequence to aminoacid
#'
#' @param rna sequence
#' @param Start of codon sequence
#' @return codon
#' @export
#'
codon_start <- function(rna, start = 1){
  rna_length <- nchar(rna)
  codons <- substring(rna,
                      first = seq(from = start, to = rna_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = rna_length, by = 3))
  return(codons)
}
