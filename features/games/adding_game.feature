Feature: Adding games
  In order to have an easy overview of all my games
  As a user
  I want to add some games to my libRoRy
  
  Background:
    Given I am on the homepage
    When I follow "Go to games"
    And I follow "New game"
  
  
  Scenario: Adding games
    When I fill in "Title" with "Fear"
    And I choose "PS3"
    And I select "Adventure" from "Genre"
    And I press "Submit"
    Then I should see "Game has been created."
    And I should see "Fear"
    And I should see "PS3"
    
  Scenario: Adding games without a title
    When I choose "PS3"
    And I press "Submit"
    Then I should see "Game has not been created."
    And I should see "Title can't be blank"
    
  Scenario: Adding duplicate games
    And I fill in "Title" with "Fear"
    And I choose "PS3"
    And I press "Submit"
    And I go to the home page
    And I follow "Go to games"
    And I follow "New game"
    And I fill in "Title" with "Fear"
    And I choose "PS3"
    And I press "Submit"
    Then I should see "Game has not been created."
    And I should see "Title already taken for that system."