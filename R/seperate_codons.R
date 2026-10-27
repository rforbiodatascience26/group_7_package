#' separte_codons
#'
#' @param rna_sequence sequence of nucleotides
#' @param start start of the open reading frame
#'
#' @returns returns a list of the codons from the sequence
#' @export
#'
#' @examples separate_codons("AUGAACTAG")
#' # [1] "AUG" "AAC" "TAG"
separate_codons <- function(rna_sequence, start = 1){
  len_sequence <- nchar(rna_sequence)
  Codons <- substring(rna_sequence,
                      first = seq(from = start, to = len_sequence-3+1, by = 3),
                      last = seq(from = 3+start-1, to = len_sequence, by = 3))
  return(Codons)
}
