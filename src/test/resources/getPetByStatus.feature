Feature: Consultar una mascota por estatus

  Scenario: Consultar la mascota modificada por estatus
    Given url 'https://petstore.swagger.io/v2/pet/findByStatus?status=sold'
    When method get
    Then status 200
    And match response[0].name == 'Buddy'
