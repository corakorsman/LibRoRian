Feature: Editing music objects
  In order to update music object information
  As a user
  I want to be able to do that through an interface
  
  Background:
    Given there is a CD called "Bigger Bang" by "Rolling Stones"
    And I am on the homepage
    When I follow "Go to music"
    And I follow "Bigger Bang"
    And I follow "Edit music object"
 
  Scenario: Updating a music object
    When I fill in "Title" with "Bigger Bang"
    And I fill in "Artist" with "Rolling Stones"
    And I choose "CD"
    And I select "Rock" from "Genre"
    And I fill in "Tags" with "live opname"
    And I press "Submit"
    Then I should see "Music object has been updated."
    And I should see "Bigger Bang"
    And I should see "Rolling Stones"
    And I should see "live opname" within "#music #tags"
    
  Scenario: updating a music objec with invalid attributes for title is bad
    And I fill in "Title" with ""
    And I press "Submit"
    Then I should see "Music object has not been updated."
  
  Scenario: updating a music objec with invalid attributes for artist is bad
    And I fill in "Artist" with ""
    And I press "Submit"
    Then I should see "Music object has not been updated."
      