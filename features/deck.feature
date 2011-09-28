Feature: Decks
  People love decks

  Scenario: A deck from 1 to 100
    When I create a deck from 1 to 100
    Then I have 100 cards to deal
