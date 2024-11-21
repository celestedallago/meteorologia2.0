test_that("Test de la función centigrados_a_fahrenheit", {
  # Pruebas con valores típicos
  expect_equal(centigrados_a_fahrenheit(0), 32)  # 0°C = 32°F
  expect_equal(centigrados_a_fahrenheit(100), 212)  # 100°C = 212°F
  expect_equal(centigrados_a_fahrenheit(-40), -40)  # -40°C = -40°F

  # Prueba con valores decimales
  expect_equal(centigrados_a_fahrenheit(-17.77778), 0, tolerance = 1e-5)  # -17.77778°C = 0°F

  # Comprobación de error cuando el valor no es numérico
  expect_error(centigrados_a_fahrenheit("string"), "El argumento centigrados debe ser numerico.")
  expect_error(centigrados_a_fahrenheit(TRUE), "El argumento centigrados debe ser numerico.")
  expect_error(centigrados_a_fahrenheit(NULL), "El argumento centigrados debe ser numerico.")

})
