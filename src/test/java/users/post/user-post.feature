Feature: Post user
  Scenario: Post a user
    Given url "https://reqres.in"+"/api/users/"
    And request {"name": "morpheus","job": "leader"}
    When method post
    Then status 201