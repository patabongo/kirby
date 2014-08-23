#' kirby.
#'
#' @name kirby
#' @docType package
#' @importFrom stringr str_extract_all perl
NULL

#' Entire published works of comics artist Jack Kirby
#'
#' A dataset containing the various publication details.
#' Each month contains multiple assignments. One data plus one
#’ assignment is shown below as example.
#'
#' \itemize{
#'   \item monthyear. Date of publication.
#'   \item book. Publication (usually the name of a series) the work was published in.
#’   \item issue. Issue number.
#’   \item publisher. Name of the publisher.
#’   \item title. Story title (or other, e.g. ‘cover’ where applicable).
#’   \item pages. Number of published pages in this assignment.
#'   ...
#' }
#'
#' @format A data frame with 533 rows and 216 variables
#' @source \url{http://www.marvelmasterworks.com/resources/kirby_chronology.html}
#' @name kirbywide
NULL
