test_that("if you get correct dna length", {
  expect_equal(len(createdna(4)), 4)
  expect_equal(len(createdna(77)), 77)
})
