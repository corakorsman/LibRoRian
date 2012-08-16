Feature: Searching
  In order to find specific librorian objects
  As a user
  I want to enter a search query and get results
  
  Background:
    Given there is a "DVD " movie called "Watchmen"
    And the DVD movie called "Watchmen" has the tags "comic"
    And there is a "DVD" movie called "Cloverfield"
    And I am on the homepage
    When I follow "Go to Movies"
    Then I should see "Watchmen"
    And I should see "Cloverfield"
    
   Scenario: Finding by tag
     When I fill in "search" with "comic"
     And I press "Search"
     Then I should see "Watchmen"
     And I should not see "Cloverfield"