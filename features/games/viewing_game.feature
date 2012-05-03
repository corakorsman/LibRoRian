Feature: Viewing games
  In order to see which games I have
  As a user
  I want to be able to see a list of games
  
  Scenario: Listing all games
    Given there is a "PS3" game called "Fear"
    And I am on the homepage
    When I follow "Go to games"
    And I follow "Fear"
    Then I should see "Fear"
    And I should see "PS3"