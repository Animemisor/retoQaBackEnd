Feature: Operaciones CRUD reutilizables de usuarios

Background:
  * url baseUrl

@crearUsuario
Scenario: Crear usuario
  * def usuario = call read('classpath:helpers/data-generator.js')

  Given path '/usuarios'
  And request usuario
  When method POST
  Then status 201

  * def result =
  """
  {
    id: '#(response._id)',
    email: '#(usuario.email)',
    data: '#(usuario)'
  }
  """