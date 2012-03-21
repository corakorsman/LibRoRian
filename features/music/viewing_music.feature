Feature: Viewing music objects
  In order to see which music I have
  As a user
  I want to be able to see a list of music objects
  
  Scenario: Listing all music objects
    Given there is a music object called "Bigger Bang"
    And I am on the homepage
    When I follow "Bigger Bang"
    And I should see "Bigger Bang"
    And I should see "Rolling Stones"