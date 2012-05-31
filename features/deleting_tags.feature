Feature: Deleting tags
  In order to remove old tags
  As a user
  I want to click a button and make them go away
  
  Background:
    Given there is a CD called "Bigger Bang" by "Rolling Stones"
    And the CD called "Bigger Bang" has the tags "live"
    Given I am on the homepage
    And I follow "Go to music"
    And I follow "Bigger Bang"
    Then I should see "Bigger Bang"
    And I should see "live"

  Scenario: Deleting a tag
    When I follow "delete this tag"
    Then I should not see "live"