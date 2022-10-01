Feature: Service client POST create article
  As QA automation
  I want to create an article
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: create an article with POST Method
    * print tokenID
    * def requestPost = read('classpath:karate/request/03_createArticle/requestCreateArticleData.json')
    * def responsePost = read('classpath:karate/request/03_createArticle/responseCreateArticleData.json')
    Given header Authorization = 'Bearer ' + tokenID
    Given path 'articles'
    And request requestPost
    When method POST
    Then status 200
    And match response == responsePost
