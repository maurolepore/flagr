test_that("fbind outputs a factor", {
  a <- factor(c("character", "hits", "your", "eyeballs"))
  b <- factor(c("but", "integer", "where it", "counts"))
  expect_is(fbind(a, b), "factor")
})

test_that("fbind errs if input isn't a factor", {
  a <- factor(c("character", "hits", "your", "eyeballs"))
  b <- factor(c("but", "integer", "where it", "counts"))
  expect_warning(
      expect_error(
      fbind(as.character(a), b),
      "must be a factor"
    )
  )
})
