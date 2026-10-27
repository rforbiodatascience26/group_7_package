test_that("separate_codons() splits the sequence into codons of length 3, starting from start", {
  expect_equal(separate_codons("AAUGAATTAG", start = 2), c("AUG","AAT","TAG"))
})
