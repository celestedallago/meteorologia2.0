#' Convertidor de fahrenheit a centigrados
#'
#' @param fahrenheit temperatura en grados fahrenheit
#'
#' @return
#' Temperatura en grados centigrados
#'
#'
#' @examples
#' fahrenheit_a_centigrados(50)
#'
#'
#'
#' @export
#'
#'
fahrenheit_a_centigrados <- function(fahrenheit) {
  if (!is.numeric(fahrenheit)) {
    cli::cli_abort("El argumento fahrenheit debe ser numerico.")
  }

  (fahrenheit - 32) * 5 / 9
}



