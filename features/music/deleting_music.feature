Feature: Deleting music objects
  In order to remove needless music objects
  As a music owner
  I want to make them disappear
  
  Scenario: Deleting a music object
    Given there is a CD called "Bigger Bang" by "Rolling Stones"
    And I am on the homepage
    When I follow "Go to music"
    And I follow "Bigger Bang"
    And I follow "Delete music object"
    Then I should see "Music object has been deleted"
    Then I should not see "Bigger Bang"