Feature: As a game
  I want to have turns

  Scenario: An N-turn game
    Given A 10 turn game
    Then There should be 10 turns

  Scenario: An indefinite game
    Given An indefinite game
    Then It should play an indefinite number of turns
