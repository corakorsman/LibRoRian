Feature: Searching
  In order to find specific librorian objects
  As a user
  I want to enter a search query and get results
  
  Background:
    Given there is a "PS3" game called "Fear"
    And the PS3 game called "Fear" has the tags "horror"
    And there is a "PS3" game called "Nier"
    And I am on the homepage
    When I follow "Go to Games"
    Then I should see "Fear"
    And I should see "Nier"
    
   Scenario: Finding by tag
     When I fill in "search" with "horror"
     And I press "Search"
     Then I should see "Fear"
     And I should not see "Nier"