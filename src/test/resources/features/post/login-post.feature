Feature: Login a user
  Scenario: Login successful
    Given url "https://reqres.in"+"/api/login"
    And request {"email": "eve.holt@reqres.in","password": "cityslicka"}
    When method post
    Then status 200
    And match $.token == "#string"

  Scenario: Login unsuccessful - missing password
    Given url "https://reqres.in"+"/api/login"
    And request {"email": "peter@klaven"}
    When method post
    Then status 400
    And match $.error == "Missing password"

  Scenario: Login unsuccessful - missing email
    Given url "https://reqres.in"+"/api/login"
    And request {"password": "cityslicka"}
    When method post
    Then status 400
    And match $.error == "Missing email or username"