Feature: PetStore


  Scenario Outline: Find pet by status
    Given url 'https://petstore.swagger.io/v2/'
    And path 'pet/findByStatus'
    And request {"status":"<status>"}
    When method get
    Then status 200

    Examples:
    | status   |
    | available|
    |pending   |
    |sold      |
    |  *       |
    |          |