Feature: Post Methods

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read('ResponsePostDemo.json')
    * def requestBody =  read('RequestBody.json')

    Scenario: Post demo
      Given path '/users'
      And request requestBody
      And set requestBody.job = 'engineer'
      When method post
      Then status 201
      And set expectedOutput.job = 'engineer'
      And match response == expectedOutput
      And print requestBody
      And print expectedOutput
