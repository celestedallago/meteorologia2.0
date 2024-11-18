

# Función para obtener el resumen de precipitaciones por fecha
#' Funcion para obtener el resumen de precipitaciones por fecha
#'
#' @param datos dataset que se quiere analizar
#'
#' @return
#' Una grafica que muestra cuandos mm llovio por dia
#'
#'
#' @examples
#' grafica_precipitaciones(NH0910)
#'
#' @export
resumen_precipitaciones_fecha <- function(datos) {
  # Agrupar los datos por fecha y calcular la precipitación total por día
  precipitacion_resumen <- datos %>%
    dplyr::group_by(fecha) %>%
    dplyr::summarize(total_precipitacion = sum(precipitacion_pluviometrica, na.rm = TRUE))

  return(precipitacion_resumen)
}

# Función para graficar las precipitaciones
graficar_precipitaciones <- function(datos) {
  # Obtener el resumen de precipitaciones
  precipitacion_resumen <- resumen_precipitaciones_fecha(datos)

  # Graficar las precipitaciones a lo largo del tiempo
  ggplot2::ggplot(precipitacion_resumen, ggplot2::aes(x = fecha, y = total_precipitacion)) +
    ggplot2::geom_line(color = "blue", size = 1) +
    ggplot2::geom_point(color = "red") +  # Agregar puntos para resaltar los datos
    ggplot2::labs(
      title = "Precipitaciones Totales por Fecha",
      x = "Fecha",
      y = "Precipitación Total (mm)"
    ) +
    ggplot2::theme(axis.text.x = ggplot2::element_text(angle = 45, hjust = 1))  # Rotar etiquetas del eje X
}


