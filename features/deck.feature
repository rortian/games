Feature: Decks
  People love decks

  Scenario: A deck from 1 to 100
    When I create a deck from 1 to 100
    Then I have 100 cards to deal

  Scenario: Possibilites (combinations)
    When I create a deck from 1 to 100
    Then  I can calculate the number of combinations there are if I choose 20 random cards
