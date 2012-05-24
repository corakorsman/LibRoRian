Feature: Adding movies
  In order to have an easy overview of all my movies
  As a user
  I want to add some movies to my libRoRy
  
  Background:
    Given I am on the homepage
    When I follow "Go to movies"
    And I follow "New movie"
  
  
  Scenario: Adding movies
    When I fill in "Title" with "Watchmen"
    And I choose "DVD"
    And I select "Action" from "Genre"
    And I press "Submit"
    Then I should see "Movie has been created."
    And I should see "Watchmen"
    And I should see "DVD"
    
  Scenario: Adding movies without a title
    And I choose "DVD"
    And I press "Submit"
    Then I should see "Movie has not been created."
    And I should see "Title can't be blank"
    
  Scenario: Adding duplicate movies
    And I fill in "Title" with "Watchmen"
    And I choose "DVD"
    And I press "Submit"
    And I go to the home page
    And I follow "Go to movie"
    And I follow "New movie"
    And I fill in "Title" with "Watchmen"
    And I choose "DVD"
    And I press "Submit"
    Then I should see "Movie has not been created."
    And I should see "Title already taken for that medium."
    
  Scenario: Adding a movie with tags
    When I fill in "Title" with "Watchmen"
    And I choose "DVD"
    And I select "Action" from "Genre"
    And I fill in "Tags" with "comic"
    And I press "Submit"
    Then I should see "Movie has been created."
    And I should see "Watchmen"
    And I should see "DVD"
    And I should see "comic" within "#movie #tags"