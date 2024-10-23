Feature: Consultar una mascota por ID

  Scenario: Consultar la mascota ingresada
    Given url 'https://petstore.swagger.io/v2/pet/12345'
    When method get
    Then status 200
    And match response.name == 'Fido'
