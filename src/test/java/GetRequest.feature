Feature: 1st API Test
  Scenario: Test for PokeAPI
    Given url "https://fakerestapi.azurewebsites.net/api/v1/Activities"
    When method GET
    Then status 200
    And print response
