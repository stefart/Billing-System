Feature: Create a client
  In order to keep track of clients in my system
  As a user
  I want to create a new client

  Scenario: create a valid client
    Given I am on the index of Clients
    When I click on "Nuovo Cliente"
    And I fill in the form with valid client data
    And I click on "Ok"
    Then I should see the new client in the table
  
  Scenario: error when entering phone number too short
    Given I am on the page of creating a new client
    When I click on "Ok"
    And I fill in the form with a phone number shorter than 9
    Then I should see an error

  Scenario: error when entering phone number too long
    Given I am on the page of creating a new client
    When I click on "Ok"
    And I fill in the form with a phone number longer than 11
    Then I should see an error

  Scenario: error when missing name or surname
    Given I am on the page of creating a new client
    When I dont fill the forms of 'Nome' or 'Cognome'
    And I click on "Ok"
    Then I should see an error

