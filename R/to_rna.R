#' To RNA
#'
#' @param dna_sequence DNA sequence containing A, T, G and C.
#'
#' @returns DNA sequence will be converted to an RNA sequence, where T has been replaced by U.
#' @export
#'
#' @examples to_rna("ATTGCAT")
#' # [1] "AUUGCAU"
to_rna <- function(dna_sequence){
  rna_sequence <- gsub("T", "U", dna_sequence)
  return(rna_sequence)
}
