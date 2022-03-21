#' seq_count
#'
#' @description 
#' Count occurrences of each amino acid in sequence
#' 
#' @param seq character vector containing amino acid sequence.
#'
#' @return
#' A bar plot showing how many times each amino acid occurs in 
#' the sequence.
#' 
#' @export
#'
#' @examples
#' aa_seq <- "GWIFGTTLDSKTQSLLIVNNATNVVIKVCEFQFCNDPFLGVYYHKNNKSWMESEFRVY"
#' seq_count(aa_seq)
#' 
#' @importFrom magrittr %>%

seq_count <- function(seq){
  # Get all unique amino acids in the sequence
  amino_acids <- seq %>% 
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()
  
  # Count occurences of each amino acid in sequence
  counts <- sapply(amino_acids, function(aa) stringr::str_count(string = seq, pattern =  aa)) %>% 
    as.data.frame()
  
  # Change colname to "Counts"
  colnames(counts) <- c("Counts")
  # Add column with amino acids
  counts[["Amino_acids"]] <- rownames(counts)
  
  # Construct bar plot
  countPlot <- counts %>% 
    ggplot2::ggplot(ggplot2::aes(x = seq, y = Counts, fill = seq)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw()
  
  return(countPlot)
}