Feature: show and edit a Client
  In order to keep track of data related to a client
  As a user
  I want to edit the Client object

  Background:
    Given there is a client called "Mario Rossi"

  Scenario: Show the client details
    Given I am on the index of clients 
    And there is a client called "Mario Rossi"
    When I click on "Visualizza"
    Then I should see all the data related to the client

  Scenario: Edit the client details
    Given I am on the index of clients 
    And there is a client called "Mario Rossi"
    When I click on "Modifica"
    And I change the surname to "Rossi"
    And I click on "Ok"
    Then I should see "Rossi" on the client details
