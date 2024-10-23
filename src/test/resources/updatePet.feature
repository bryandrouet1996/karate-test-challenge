Feature: Actualizar una mascota

  Scenario: Actualizar el nombre y estatus de la mascota
    Given url 'https://petstore.swagger.io/v2/pet'
    And request read('updatepetrequest.json')
    When method put
    Then status 200
    And match response.name == 'Buddy'
    And match response.status == 'sold'
