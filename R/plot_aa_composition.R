#' Plot amino acid composition
#'
#' Counts how often each amino acid occurs in a single sequence and draws
#' the counts as a bar chart, one bar per residue
#'
#' @param aa_sequence A single character string of amino acid letters
#'
#' @returns A ggplot2 object showing the amino acid counts.
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#' @export
#'
#' @examples
#' plot_aa_composition("CASSLGQAYEQYF")
plot_aa_composition <- function(aa_sequence) {
  # Convert the string into a vector of characters
  amino_acids <- aa_sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # Counts the number of each amino acid in the vector
  counts <- sapply(amino_acids, function(amino_acid) {
    stringr::str_count(string = aa_sequence, pattern = amino_acid)
  }) |>
    as.data.frame()

  # Turn the counts object into a dataframe
  colnames(counts) <- c("Counts")
  counts[["Amino_acid"]] <- rownames(counts)

  # Create the ggplot2 object
  composition_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Amino_acid, y = Counts, fill = Amino_acid)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(composition_plot)
}
