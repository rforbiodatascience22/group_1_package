
test_that("if you get correct dna length", {
  expect_equal(stringr::str_length(createdna(4)), 4)
  expect_equal(stringr::str_length(createdna(77)), 77)
})
