Feature: Get user on regres
  Scenario: get a user
    Given url "https://reqres.in"+"/api/users/"+"2"
    When method get
    Then status 200

  Scenario: get a user - not found
    Given url "https://reqres.in"+"/api/users/"+"23"
    When method get
    Then status 404
