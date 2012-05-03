Feature: Deleting games
  In order to remove needless games
  As a gamer
  I want to make them disappear
  
  Scenario: Deleting a game
    Given there is a "PS3" game called "Fear"
    And I am on the homepage
    When I follow "Go to games"
    And I follow "Fear"
    And I follow "Delete game"
    Then I should see "Game has been deleted"
    Then I should not see "Fear"