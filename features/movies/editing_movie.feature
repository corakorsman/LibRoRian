Feature: Editing movies
  In order to update  information
  As a user
  I want to be able to do that through an interface
  
  Background:
    Given there is a "DVD" movie called "Watchmen"
    And I am on the homepage
    When I follow "Go to Movies"
    And I follow "Watchmen"
    And I follow "Edit movie"
 
  Scenario: Updating a movie
    When I fill in "Title" with "Watchmen2"
    And I choose "DVD"
    And I select "Action" from "Genre"
    And I fill in "Tags" with "comic"
    And I press "Submit"
    Then I should see "Movie has been updated"
    And I should see "Watchmen"
    And I should see "DVD"
    And I should see "comic" within "#movie #tags"
    
  Scenario: updating a movie with invalid attributes for title is bad
    And I fill in "Title" with ""
    And I press "Submit"
    Then I should see "Movie has not been updated"