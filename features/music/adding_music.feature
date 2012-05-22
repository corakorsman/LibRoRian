Feature: Adding music objects
  In order to have an easy overview of all my music
  As a user
  I want to add some music to my libRoRy
  
  Background:
    Given I am on the homepage
    When I follow "Go to music"
    And I follow "New music object"
  
  Scenario: Adding music objects
    When I fill in "Title" with "Bigger Bang"
    And I fill in "Artist" with "Rolling Stones"
    And I choose "CD"
    And I select "Rock" from "Genre"
    And I press "Submit"
    Then I should see "Music object has been created."
    And I should see "Bigger Bang"
    And I should see "Rolling Stones"
    
  Scenario: Adding music objects without a title
    When I fill in "Artist" with "Rolling Stones"
    And I choose "CD"
    And I press "Submit"
    Then I should see "Music object has not been created."
    And I should see "Title can't be blank"
    
  Scenario: Adding music objects without a artist
    When I fill in "Title" with "Bigger Bang"
    And I choose "CD"
    And I press "Submit"
    Then I should see "Music object has not been created."
    And I should see "Artist can't be blank"
    
  Scenario: Adding duplicate music objects
    When I fill in "Title" with "Bigger Bang"
    And I fill in "Artist" with "Rolling Stones"
    And I choose "CD"
    And I press "Submit"
    And I go to the home page
    And I follow "Go to music"
    And I follow "New music object"
    And I fill in "Title" with "Bigger Bang"
    And I fill in "Artist" with "Rolling Stones"
    And I choose "CD"
    And I press "Submit"
    Then I should see "Music object has not been created."
    And I should see "Title already taken for that artist"
    