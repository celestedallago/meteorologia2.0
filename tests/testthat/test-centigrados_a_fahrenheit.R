test_that("Test de la función centigrados_a_fahrenheit", {
  expect_equal(centigrados_a_fahrenheit(0), 32)
  expect_equal(centigrados_a_fahrenheit(100), 212)
  expect_equal(centigrados_a_fahrenheit(-40), -40)
  expect_equal(centigrados_a_fahrenheit(25), 77)
  expect_equal(centigrados_a_fahrenheit(-17.77778), 0, tolerance = 1e-5)

  expect_error(centigrados_a_fahrenheit("string"), "El argumento centigrados debe ser numérico.")
  expect_error(centigrados_a_fahrenheit(TRUE), "El argumento centigrados debe ser numérico.")
  expect_error(centigrados_a_fahrenheit(NULL), "El argumento centigrados debe ser numérico.")
})
