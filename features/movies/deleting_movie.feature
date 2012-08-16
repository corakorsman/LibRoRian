Feature: Deleting movies
  In order to remove needless movies
  As a user
  I want to make them disappear
  
  Scenario: Deleting a movie
    Given there is a "DVD" movie called "Watchmen"
    And I am on the homepage
    When I follow "Go to Movies"
    And I follow "Watchmen"
    And I follow "Delete movie"
    Then I should see "Movie has been deleted."
    Then I should not see "Watchmen"