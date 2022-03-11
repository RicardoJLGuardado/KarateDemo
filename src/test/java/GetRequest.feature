Feature: 1st API Test
  Scenario: Test for PokeAPI
    Given url "https://reqres.in/api/users?page=2"
    When method GET
    Then status 200
    And print response

    Given path response.data[1].id
    When method GET
    Then status 200
    And print response
