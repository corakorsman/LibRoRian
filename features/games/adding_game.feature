Feature: Adding games
  In order to have an easy overview of all my games 
  As a user
  I want to add some games to my libRoRy
  
  Background:
    Given I am on the homepage
    When I follow "New game"  
  
  
  Scenario: Adding games
    And I fill in "Title" with "Fear"
    And I fill in "System" with "PS3"
    And I press "Submit"
    Then I should see "Game has been created."
    And I should see "Fear"
    And I should see "PS3"
    
  Scenario: Adding games without a title
    And I fill in "System" with "PS3"
    And I press "Submit"
    Then I should see "Game has not been created."
    And I should see "Title can't be blank"
    
  Scenario: Adding games without a system type
    And I fill in "Title" with "Fear"
    And I press "Submit"
    Then I should see "Game has not been created."
    And I should see "System can't be blank"
    
  Scenario: Adding duplicate games
    And I fill in "Title" with "Fear"
    And I fill in "System" with "PS3"
    And I press "Submit"
    And I go to the home page    
    And I follow "New game"
    And I fill in "Title" with "Fear"
    And I fill in "System" with "PS3"
    And I press "Submit"    
    Then I should see "Game has not been created."
    And I should see "Title already taken for that system."
    