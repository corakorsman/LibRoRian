Feature: Viewing games
  In order to see which games I have
  As a user
  I want to be able to see a list of games
  
  Scenario: Listing all games
    Given there is a game called "Fear"
    And I am on the homepage
    When I follow "Fear"
    And I should see "Fear"
    And I should see "PS3"