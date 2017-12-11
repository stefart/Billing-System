Feature: create a Bill
  In order to keep track of bills related to a client
  As a user
  I want to create a new bill

  Background:
    Given there is a client called "Mario Rossi"

  Scenario: create a valid bill
    Given I am on the page of the client called "Mario Rossi"
    When I click on "Nuova Fattura"
    And I fill in the form with valid data
    Then I should see the new bill in the list of the bills of the client

  Scenario: error when inserting value less than 1 in "Ore effettuate"
    Given I am on the page of the client called "Mario Rossi"
    When I click on "Nuova Fattura"
    And I fill the forms of "ore_eff" with a negative number
    Then I should see an error

  Scenario: error when inserting no "Voce"
    Given I am on the page of the client called "Mario Rossi"
    When I click on "Nuova Fattura"
    And I do not fill in the forms of "Voce" any value
    Then I should see an error for empty "Voce" field

