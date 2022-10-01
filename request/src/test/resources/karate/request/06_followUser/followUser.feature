Feature: Service client POST favorite POST
  As QA automation
  I want to follow a user
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: follow a user with POST Method
    * print tokenID
    * print username
    * def responsePost = read('classpath:karate/request/06_followUser/responsePostFollowUser.json')
    * def requestBody = read ('classpath:karate/request/06_followUser/requestPostFollowUser.json')
    Given header Authorization = 'Bearer ' + tokenID
    Given path 'profiles'
    And path username
    And path 'follow'
    And request requestBody
    When method POST
    Then status 500
    And match response == responsePost