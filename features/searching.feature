Feature: Searching
  In order to find specific librorian objects
  As a user
  I want to enter a search query and get results
  
  Background:
    Given there is a CD called "Bigger Bang" by "Rolling Stones"
    And the CD called "Bigger Bang" has the tags "live, rock 'n roll"
    And there is a CD called "One" by "U2"
    And I am on the homepage
    When I follow "Go to music"
    Then I should see "Bigger Bang"
    And I should see "One"
    
   Scenario: Finding by tag
     When I fill in "search" with "tag:live"
     And I press "Search"
     Then I should see "Rolling Stones"
     And I should not see "U2"
