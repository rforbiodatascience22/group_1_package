#' Create DNA sequence
#'
#' This function use two basic function: sample and paste0, here are interpretation respectively. Sample instructs R to randomly select a number of bases (which you give as "dna_length" input) between "A,T,C,G", with replacement. Sampling with replacement simply means that each number is “replaced” after it is selected, so that the same base can show up more than once. Since what you sample on one time shouldn’t affect what you sample on any of the others. Through sample function we get a list of bases with length you want, now use paste0 to change list into string, then you get real dna sequence.
#' @param dna_length A integer, the length of DNA you want to create.
#' @return Random DNA sequence of specified length
#' @export
#'
createdna <- function(dna_length){
  base_list <- sample(c("A", "T", "G", "C"), size = dna_length, replace = TRUE)
  dnaseq <- paste0(base_list, collapse = "")
  return(dnaseq)
}
