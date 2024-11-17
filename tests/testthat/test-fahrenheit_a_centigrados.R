test_that("Test de la función fahrenheit_a_centigrados", {
   expect_equal(fahrenheit_a_centigrados(32), 0)
  expect_equal(fahrenheit_a_centigrados(212), 100)


  expect_error(fahrenheit_a_centigrados("string"), "El argumento fahrenheit debe ser numérico.")
  expect_error(fahrenheit_a_centigrados(TRUE), "El argumento fahrenheit debe ser numérico.")
  expect_error(fahrenheit_a_centigrados(NULL), "El argumento fahrenheit debe ser numérico.")


  expect_equal(fahrenheit_a_centigrados(-40), -40)


  expect_equal(fahrenheit_a_centigrados(0), -17.77778, tolerance = 1e-5)

})

