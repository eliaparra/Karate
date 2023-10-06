Feature: PetStore


  Scenario Outline: Find pet by status
    Given url 'https://petstore.swagger.io/v2/'
    And path 'pet/findByStatus'
    And request {"status":"<status>"}
    When method get
    Then status 200
    And match bar >'#[1]'

    Examples:
    | status |
    | available|
    |pending   |
    |sold      |
    |  *|
    | |