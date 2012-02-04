Feature: adding music objects
  In order to have an easy overview of all my music 
  As a user
  I want to add some music to my libRoRy
  
  Background:
    Given I am on the homepage
    When I follow "new music object"  
  
  
  Scenario: Adding music objects
    And I fill in "Title" with "Bigger Bang"
    And I fill in "Artist" with "Rolling Stones"
    And I press "create new music object"
    Then I should see "New music object has been created."
    And I should be on the music page for "Bigger Bang"
    And I should see "Bigger Bang" 
    And I should see "Rolling Stones"
    
  Scenario: Adding music objects without a title
    And I fill in "Artist" with "Rolling Stones"
    And I press "create new music object"
    Then I should see "New music object has not been created."
    And I should see "Title can't be blank"
    
  Scenario: Adding music objects without a artist
    And I fill in "Title" with "Bigger Bang"
    And I press "create new music object"
    Then I should see "New music object has not been created."
    And I should see "Artist can't be blank"
    
  Scenario: Adding duplicate music objects
    And I fill in "Title" with "Bigger Bang"
    And I fill in "Artist" with "Rolling Stones"
    And I press "create new music object"
    And I go to the home page    
    And I follow "new music object"
    And I fill in "Title" with "Bigger Bang"
    And I fill in "Artist" with "Rolling Stones"
    And I press "create new music object"    
    Then I should see "New music object has not been created."
    And I should see "Music object already exist"
    