#' Convertidor de centigrados a fahrenheit
#'
#' @param centigrados temperatura en grados centigrados
#'
#' @return
#' Temperatura en grados fahrenheit
#'
#'
#' @examples
#' centigrados_a_fahrenheit(25)
#'
#' @export
#'
centigrados_a_fahrenheit <- function(centigrados) {
  if (!is.numeric(centigrados)) {
    stop("El argumento centigrados debe ser numérico.")
  }

  fahrenheit <- (centigrados * 9/5) + 32
  return(fahrenheit)
}
