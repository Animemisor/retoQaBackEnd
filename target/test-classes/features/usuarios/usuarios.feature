Feature: Gestión de usuarios

  Background:
  * url baseUrl
  * def crearUsuario = call read('classpath:features/usuarios/usuarios-crud.feature@crearUsuario')
  * def schema = read('classpath:helpers/schemas/usuario-schema.json')

  Scenario: Listar usuarios
    Given path '/usuarios'
    When method GET
    Then status 200
    And match response ==
    """
    {
      quantidade: '#number',
      usuarios: '#[]'
    }
    """

  Scenario: Obtener usuario por ID
    * def user = crearUsuario.result

    Given path '/usuarios', user.id
    When method GET
    Then status 200
    And match response._id == user.id
    And match response == schema

  Scenario: Actualizar usuario
    * def user = crearUsuario.result

    * def updatedUser =
    """
    {
      nome: "Usuario actualizado",
      email: "#(user.email)",
      password: "123456",
      administrador: "false"
    }
    """

    Given path '/usuarios', user.id
    And request updatedUser
    When method PUT
    Then status 200
    And match response.message contains 'Registro alterado'

  Scenario: Eliminar usuario
    * def user = crearUsuario.result

    Given path '/usuarios', user.id
    When method DELETE
    Then status 200
    And match response.message contains 'Registro excluído'

  Scenario: Obtener usuario inexistente
    Given path '/usuarios', 'id_fake'
    When method GET
    Then status 400
    Then status 400
    And match response == '#object'

  Scenario: Crear usuario duplicado
    * def user = crearUsuario.result

    Given path '/usuarios'
    And request user.data
    When method POST
    Then status 400
    And match response.message contains 'email já está sendo usado'