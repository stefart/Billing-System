Feature: Show index of bills
  In order to have a survey of a client bills
  As a user
  I want show a list of bills related to the client

  Background:
    Given there is a client called "Mario Rossi"
    And this client has a bill 

  Scenario: User click on the link "Visualizza tutte"
    Given I am on the page of the client called "Mario Rossi"
    When I click on "Visualizza tutte"
    Then i should see the index of bills related to the client
