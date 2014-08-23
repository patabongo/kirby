#' kirby.reshape
#'
#' Takes the cleaned, wide-format bibliography and makes it long.
#’ @param x Cleaned data. Provided with the package — load using data(kirbywide).
#' @keywords kirby
#' @export
#' @examples
#' kirbylong <- kirby.reshape(kirbywide)

kirby.reshape <- function(x) {
y <- reshape(x, 
	direction="long", 
	idvar="monthyear", 
	varying=2:ncol(x))
y <- y[!is.na(y$pages),]
return(y)
}