Feature: Service client POST login user
  As QA automation
  I want to log in with a user
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: check the log in with GET Method
    * def requestPost = read('classpath:karate/request/02_loginUser/requestLoginUserData.json')
    * def responsePost = read('classpath:karate/request/02_loginUser/responseLoginUserData.json')

    Given path 'users', 'login'
    And request requestPost
    When method POST
    Then status 200
    And match response == responsePost