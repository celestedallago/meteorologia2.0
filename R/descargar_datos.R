#' Descargar datos
#'
#'
#'
#' Algunas de las estaciones disponibles para descargar son:
#' * NH0910
#' * NH0437
#' * NH0046
#' * NH0472
#' * NH0098
#'
#' @param id_estacion es una identificacion confomado por dos letras mayusculas y cuatro numeros
#'
#' @return
#' Nos devuelve el dateset del id ingresado
#'
#'
#' @examples
#' data <- descargar datos ("NH0910")
#'
#' @export
descargar_datos <- function(id_estacion) {
  estacion_url <- paste0("https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/", id_estacion, ".csv")
  ruta <- paste0(tempdir(), "/", id_estacion, ".csv")

  if (file.exists(ruta)) {
    datos_estacion <- utils::read.csv(ruta)
    cli::cli_inform("Lectura del archivo de estacion '{id_estacion}' desde el directorio temporal.")
  } else {
    response <- tryCatch({
      utils::download.file(estacion_url, ruta)
      datos_estacion <- utils::read.csv(ruta)
      cli::cli_inform("Descargando y leyendo el archivo de estacion '{id_estacion}' en el directorio temporal.")
    }, error = function(e) {
      stop(paste("Error al descargar los datos:", e$message))
    })
  }

  return(datos_estacion)
}
