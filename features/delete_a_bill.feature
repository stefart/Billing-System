Feature: delete a Bill
  In order to keep track of bills related to a client
  As a user
  I want to delete an existent bill

  Background:
    Given there is a client called "Mario Rossi"
    Given there is a bill under "Mario Rossi" called "Commessa"  

  Scenario: delete a valid bill
    Given I am on the page of the client called "Mario Rossi"
    And I should see the bill "Commessa" in the list of the bills of the client
    And I click on "Elimina"
    And I click on "OK" on the alert box
    Then I should see "Nessuna fattura presente"


