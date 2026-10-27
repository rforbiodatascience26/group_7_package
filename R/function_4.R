#' Translate RNA Codons to an Amino Acid Sequence
#'
#' Takes a vector of three-letter RNA codons and translates them into a single
#' contiguous protein sequence string based on the standard genetic code.
#'
#' @param Codons
#'
#' @return A single character string representing the translated amino acid sequence.
#' @export
#'
#' @examples
#' function_4(c("AUG", "GCU", "UAG"))
function_4 <- function(Codons){
  protein_sequence <- paste0(codons[Codons], collapse = "")
  return(protein_sequence)
}
