Feature: Get resource on regres
  Scenario: get a resource
    Given url "https://reqres.in"+"/api/unknown/"+"2"
    When method get
    Then status 200

  Scenario: Get resource - not found
    Given url "https://reqres.in"+"/api/unknown/"+"23"
    When method get
    Then status 404