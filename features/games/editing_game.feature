Feature: Editing games
  In order to update game information
  As a user
  I want to be able to do that through an interface
  
  Background:
    Given there is a game called "Fear"
    And I am on the homepage
    When I follow "Go to games"
    And I follow "Fear"
    And I follow "Edit game"
 
  Scenario: Updating a game
    And I fill in "Title" with "Fear2"
    And I press "Submit"
    Then I should see "Game has been updated"
    And I should see "Fear2"
    And I should see "PS3"
    
  Scenario: updating a game with invalid attributes for title is bad
    And I fill in "Title" with ""
    And I press "Submit"
    Then I should see "Game has not been updated"