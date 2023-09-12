Feature: Get a list of users on regres

  Scenario: Get a list of users
    * def jsonResponse = read('../../../resources/json/users_list_page2.json')
    Given url "https://reqres.in"+"/api/users?page=2"
    When method get
    Then status 200
    And match $ == jsonResponse

  Scenario: Get a list of users - Not users page
    * def jsonResponse = read('../../../resources/json/users_list_page500.json')
    Given url "https://reqres.in"+"/api/users?page=500"
    When method get
    Then status 200
    And match $ == jsonResponse