
<!-- README.md is generated from README.Rmd. Please edit that file -->

# meteorologia2.0

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
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

## Example

Este es un ejemplo basico de como instalar la libreria del paquete:

``` r
library(meteorologia2.0)
```
