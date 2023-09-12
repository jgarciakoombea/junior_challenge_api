Feature: Register a user
  Scenario: Register successful
    Given url "https://reqres.in"+"/api/register"
    And request {"email": "eve.holt@reqres.in","password": "pistol"}
    When method post
    Then status 200

  Scenario: Register unsuccessful - missing password
    Given url "https://reqres.in"+"/api/register"
    And request {"email": "sydney@fife"}
    When method post
    Then status 400
    And match $.error == "Missing password"

  Scenario: Register unsuccessful - missing email
    Given url "https://reqres.in"+"/api/register"
    And request {"password": "pistol"}
    When method post
    Then status 400
    And match $.error == "Missing email or username"