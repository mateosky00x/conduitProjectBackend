Feature: Service client POST register user
  As QA automation
  I want to create a user
  To validate the status code and response

  Background: consume service
    * url url
  Scenario: check the service POST Method
    * def requestPost = read('classpath:karate/request/01_registerUser/requestRegisterUserData.json')
    * def responsePost = read('classpath:karate/request/01_registerUser/responseRegisterUserData.json')

    Given path 'users'
    And request requestPost
    When method POST
    Then status 200
    And match response == responsePost

