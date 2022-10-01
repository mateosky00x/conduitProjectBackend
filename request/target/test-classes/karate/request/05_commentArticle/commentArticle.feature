Feature: Service client POST favorite POST
  As QA automation
  I want to comment a POST
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: make a comment with POST Method
    * print tokenID
    * print slug
    * def responsePost = read('classpath:karate/request/05_commentArticle/responsePostCommentArticle.json')
    * def requestBody = read ('classpath:karate/request/05_commentArticle/requestPostCommentArticle.json')
    Given header Authorization = 'Bearer ' + tokenID
    Given path 'articles'
    And path  slug
    And path 'comments'
    And request requestBody
    When method POST
    Then status 500
    And match response == responsePost