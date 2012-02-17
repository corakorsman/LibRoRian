Feature: Editing Music Objects
  In order to update music object information
  As a user
  I want to be able to do that through an interface
  
  Background:
    Given there is a music object called "Bigger Bang"
    And I am on the homepage
    When I follow "Bigger Bang"
    And I follow "Edit music object"
 
  Scenario: Updating a music object
    And I fill in "Title" with "Bigger Bang beta"
    And I press "Submit"
    Then I should see "Music object has been updated"
      And I should see "Bigger Bang beta"
    And I should see "Rolling Stones"
    
  Scenario: updating a music objec with invalid attributes for title is bad 
    And I fill in "Title" with ""
    And I press "Submit"
    Then I should see "Music object has not been updated."
  
  Scenario: updating a music objec with invalid attributes for artist is bad 
    And I fill in "Artist" with ""
    And I press "Submit"
    Then I should see "Music object has not been updated."
      