Feature: Viewing music objects
  In order to see which music I have
  As a user
  I want to be able to see a list of music objects
  
  Scenario: Listing all music objects
    Given there is a CD called "Bigger Bang" by "Strepitus"
    And I am on the homepage
    When I follow "Go to music"
    And I follow "Bigger Bang"
    Then I should see "Bigger Bang"
    And I should see "Strepitus"