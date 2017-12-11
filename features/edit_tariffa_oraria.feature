Feature: Edit "Tariffa oraria"
  In order to maintain my "Tariffa oraria" up to date
  As a user
  I want to edit the "Tariffa oraria"

  Scenario: change the tariffa oraria
    Given there is a Tariffa oraria
    And I am on the index of Tariffa oraria
    When I click on "Modifica"
    And I change the Tariffa oraria to "14"
    And I click on "Aggiorna Tariffa Oraria"
    Then the Tariffa oraria is "14"

  Scenario: error when inserting negative value in "Tariffa oraria"
    Given there is a Tariffa oraria
    And I am on the index of Tariffa oraria
    When I click on "Modifica"
    And I change the Tariffa oraria to "-4"
    And I click on "Aggiorna Tariffa Oraria"
    Then I should see an error

  Scenario: cant`t leave the "Tariffa oraria" blank
    Given there is a Tariffa oraria
    And I am on the index of Tariffa oraria
    When I click on "Modifica"
    And I change the Tariffa oraria to ""
    And I click on "Aggiorna Tariffa Oraria"
    Then I should see an error
