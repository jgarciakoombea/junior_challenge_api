Feature: Get user on regres
  Scenario: get a user
    Given url "https://reqres.in"+"/api/users/"+"2"
    When method get
    Then status 200
