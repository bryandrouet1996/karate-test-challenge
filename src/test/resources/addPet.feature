Feature: Añadir una mascota a la tienda


  Scenario: Añadir una nueva mascota
    Given url 'https://petstore.swagger.io/v2/pet'
    And request read('addpetrequest.json')
    When method post
    Then status 200
    And match response.id == 12345
