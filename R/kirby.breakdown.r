#' kirby.breakdown
#'
#' Separates Jack Kirby bibliography into separate time periods.
#’ @param x Kirby bibliography as scraped from the web.
#' @keywords kirby
#' @export
#' @examples
#' x <- kirby.scrape

kirby.breakdown <- function(x) {
y <- str_extract_all(x, perl("(?<=CC0000\\\">).*?(?=<[P|p]>|CC0000)"))
y2 <- y[[1]]
return(y2)
}