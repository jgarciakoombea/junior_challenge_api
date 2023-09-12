Feature: Post user
  Scenario: Post a user
    Given url "https://reqres.in"+"/api/users/"
    And request {"name": "morpheus","job": "leader"}
    When method post
    Then status 201
    And match karate.response.header('content-type') == 'application/json; charset=utf-8'
    And match karate.response.header('Content-Length') == '#string'
    And match $.id == '#string'