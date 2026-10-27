#' Creating a DNA strand
#'
#' @param dna_length The wanted lenght of the DNA strand
#'
#' @returns returns a random DNA strand with the wanted length
#' @export
#'
#' @examples creating_dna(7)
#' # [1] "ATGCTAA"
creating_dna <- function(dna_length){
  dna_bases <- sample(c("A", "T", "G", "C"), size = dna_length, replace = TRUE)
  dna_sequence <- paste0(dna_bases, collapse = "")
  return(dna_sequence)
}
