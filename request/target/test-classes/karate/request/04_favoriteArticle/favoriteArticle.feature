Feature: Service client POST favorite POST
  As QA automation
  I want to favorite a POST
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: favorite an article with POST Method
    * print tokenID
    * print slug
    * def responsePost = read('classpath:karate/request/04_favoriteArticle/responseFavoriteArticle.json')
    * def requestBody = read ('classpath:karate/request/04_favoriteArticle/requestPostFavoriteArticle.json')
    Given header Authorization = 'Bearer ' + tokenID
    Given path 'articles'
    And path  slug
    And path 'favorite'
    And request requestBody
    When method POST
    Then status 500
    And match response == responsePost



