test_that("function_4 translates codons correctly", {
  test_codons <- c("AUG", "GCU", "UGA")
  expect_equal(function_4(test_codons), "MA_")
  expect_type(function_4(test_codons), "character")
})
