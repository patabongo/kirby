#' kirby.delimit
#'
#' Does as much as possible to convert Kirby bibliography data to tab-delimited format.
#’ @param x Kirby bibliography as scraped (using kirby.scrape()) and separated (using kirby.breakdown()).
#' @keywords kirby
#' @export
#' @examples
#' z <- kirby.delimit(y)

kirby.delimit <- function(x) {
y <- gsub("\\(([0-9](?!-)[[:print:]]*?)\\)", "\t\\1\t", x, perl=T)
y2 <- gsub(" : ", "\t", y)
y3 <- gsub(" # ", "\t", y2)
y4 <- gsub(" - ", "\t", y3)
y5 <- gsub(": Marvel", "\tMarvel", y4)
y6 <- gsub("<.*?>", "", y5)
return(y6)
}