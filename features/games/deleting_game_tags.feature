Feature: Deleting tags
  In order to remove old tags
  As a user
  I want to click a button and make them go away
  
  Background:
    Given there is a "PS3" game called "Fear"
    And the PS3 game called "Fear" has the tags "horror"
    Given I am on the homepage
    And I follow "Go to Games"
    And I follow "Fear"
    Then I should see "Fear"
    And I should see "horror"

  Scenario: Deleting a tag
    When I follow "delete-horror"
    Then I should not see "horror"