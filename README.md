
<!-- README.md is generated from README.Rmd. Please edit that file -->

# meteorologia2.0

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/celestedallago/meteorologia2.0/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/celestedallago/meteorologia2.0/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

El objetivo de meteorologia2.0 es poder analizar y manipular datos
meteorologicos de distintos data sets

## Instalacion

Puedes instalar la version de desarrollo de meteorologia2.0 desde
[GitHub](https://github.com/) con:

``` r
# install.packages("pak")
pak::pak("celestedallago/meteorologia2.0")
```

## Descargar datos:

Para poder descargar los distintos dataset que se ofrecen de las
estaciones meteorologicas deberas seguir los siguientes pasos:

1)  deberas llamar a la funcion **`descargar_datos`**
2)  como parametro a esta funcion se debera colocar el id
    correspondiente al dataset que deseas descargar. Los dataset
    disponibles son: -NH0910 -NH0098 -NH0437 -NH0046 -NH0472

## Funciones

1)  **`fahrenheit_a_centigrados`**: Esta funcion devuelve la temperatura
    ingresada en grados fahrenheit a grados centigrados
2)  **`centigrados_a_fahrenheit`**: Esta funcion devuelve la temperatura
    ingresa en grados centigrados a grados fahrenheit
3)  **`grafico_temperatura_mensual`**: Esta funcion recibe un data frame
    con datos de una o mas estaciones y agrupa los datos por mes y
    calcula el promedio de la temperatura para cada mes, lo que permite
    observar tendencias y variaciones a lo largo del año. Luego, genera
    un grafico que muestra estos promedios mensuales, con el eje x
    representando los meses y el eje y la temperatura promedio en grados
    Celsius.

## Ejemplo

Este es un ejemplo basico de como instalar la libreria del paquete:

``` r
library(meteorologia2.0)
```

## Ejemplo uso de las funciones:

### Ejemplo de uso funcion `fahrenheit_a_centigrados`

``` r
fahrenheit_a_centigrados(50)
#> [1] 10
```

### Ejemplo de uso funcion `centigrados_a_fahrenheit`

``` r
centigrados_a_fahrenheit(25)
#> [1] 77
```

## Ejemplo del uso funcion

`grafico_temperatura_mensual`

``` r
grafico_temperatura_mensual(NH0910)
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />

### Contribuciones al paquete

Si deseas contribuir al paquete, ya sea para mejorar funcionalidades,
corregir errores o proponer nuevas características, sigue estos pasos:

Haz un fork y clona el repositorio: Realiza un fork de este repositorio
en tu cuenta de GitHub y luego clónalo en tu máquina local.

Haz tus modificaciones y crea un pull request: Realiza los cambios que
consideres necesarios en tu copia del repositorio. Luego, abre un pull
request hacia la rama principal del proyecto, asegurándote de incluir
una descripción clara sobre el propósito de tu contribución.

Si tienes alguna duda o necesitas asistencia durante el proceso de
contribución, no dudes en contactarme:

Celeste Dal Lago / <celedallago@gmail.com>

### Codigo de contribucion
