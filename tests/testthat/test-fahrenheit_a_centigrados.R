test_that("Test de la función fahrenheit_a_centigrados", {
  # Pruebas con valores típicos
  expect_equal(fahrenheit_a_centigrados(32), 0)  # 32°F = 0°C
  expect_equal(fahrenheit_a_centigrados(212), 100)  # 212°F = 100°C
  expect_equal(fahrenheit_a_centigrados(-40), -40)  # -40°F = -40°C (valor extremo)

  # Prueba con valores decimales
  expect_equal(fahrenheit_a_centigrados(0), -17.77778, tolerance = 1e-5)  # 0°F = -17.77778°C

})
