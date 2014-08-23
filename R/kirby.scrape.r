#' kirby.scrape
#'
#' Scrapes Jack Kirby bibliography data from the web in HTML format.
#’ This function will probably give a couple of “incomplete final line found on [page] errors. Press on regardless!
#' @keywords kirby
#' @export
#' @examples
#' x <- kirby.scrape

kirby.scrape <- function() {
x <- paste(
 readLines( "http://www.marvelmasterworks.com/resources/kirby_chronology.html" 
), readLines( "http://www.marvelmasterworks.com/resources/kirby_chronology1.html" 
), readLines( "http://www.marvelmasterworks.com/resources/kirby_chronology2.html" 
), readLines( "http://www.marvelmasterworks.com/resources/kirby_chronology3.html" 
), readLines( "http://www.marvelmasterworks.com/resources/kirby_chronology4.html" 
), readLines( "http://www.marvelmasterworks.com/resources/kirby_chronology5.html" 
), collapse="")
return(x)
}