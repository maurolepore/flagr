#' Create humane output for factors
#'
#' @param a A factor.
#' @param b A factor.
#'
#' @return A factor.
#' @export
#'
#' @examples
#' a <- factor(c("character", "hits", "your", "eyeballs"))
#' b <- factor(c("but", "integer", "where it", "counts"))
#' fbind(a, b)
fbind <- function(a, b) {
  if (!inherits(a, "factor")) {
    usethis::ui_stop("`a` must be a factor")
  }
  factor(c(as.character(a), as.character(b)))
}
