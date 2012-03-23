Feature: Viewing movies
  In order to see which movies I have
  As a user
  I want to be able to see a list of movies
  
  Scenario: Listing all movies
    Given there is a movie called "Watchmen"
    And I am on the homepage
    When I follow "Go to movies"
    And I follow "Watchmen"
    Then I should see "Watchmen"
    And I should see "DVD"