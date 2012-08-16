Feature: Deleting tags
  In order to remove old tags
  As a user
  I want to click a button and make them go away
  
  Background:
    Given there is a "DVD" movie called "Watchmen"
    And the DVD movie called "Watchmen" has the tags "comic"
    Given I am on the homepage
    And I follow "Go to Movies"
    And I follow "Watchmen"
    Then I should see "Watchmen"
    And I should see "comic"

  Scenario: Deleting a tag
    When I follow "delete-comic"
    Then I should not see "comic"