Feature: Editing games
  In order to update game information
  As a user
  I want to be able to do that through an interface
  
  Background:
    Given there is a "PS3" game called "Fear"
    And I am on the homepage
    When I follow "Go to Games"
    And I follow "Fear"
    And I follow "Edit game"
 
  Scenario: Updating a game
    When I fill in "Title" with "Fear"
    And I choose "PS3"
    And I select "Adventure" from "Genre"
    And I fill in "Tags" with "horror"
    And I press "Submit"
    Then I should see "Game has been updated"
    And I should see "Fear"
    And I should see "PS3"
    And I should see "horror" within "#game #tags"
    
  Scenario: updating a game with invalid attributes for title is bad
    And I fill in "Title" with ""
    And I press "Submit"
    Then I should see "Game has not been updated"