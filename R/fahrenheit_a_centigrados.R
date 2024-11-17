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
    cli::cli_abort(c(
      "El argumento fahrenheit debe ser numérico.",
      "i" = "La variable ingresada es un {class(fahrenheit)[1]}"
    ))
  }


  (fahrenheit - 32) * 5 / 9
}
