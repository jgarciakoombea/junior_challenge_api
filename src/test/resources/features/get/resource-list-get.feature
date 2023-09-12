Feature: Get a resource list on regres
  Scenario: get a resource list
    * def jsonResponse = read('../../../resources/json/resources_list.json')
    Given url "https://reqres.in"+"/api/unknown/"
    When method get
    Then status 200
    And match $ == jsonResponse