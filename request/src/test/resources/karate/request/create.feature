Feature: service client POST
  As Qa automation
  I want to create a client
  To validate the status code and response

  Background: consume service
    * url url

    Scenario: check the service POST Method

      * def requestCreate = {"name": '#(name)',"job": '#(job)',"id": '#(idPost)',"createdAt": '#(createdAt)'}
      * def responsesPost = read('classpath:karate/request/responsePost.json')

      Given path "users"
      And request requestCreate
      When method post
      Then status 201
      And match response == responsesPost
      And assert response.name == name
      And assert response.job == job
      And assert response.id == idPost
      
