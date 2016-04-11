Feature: Home Page and Stuff
  Scenario: Visit root of the url path returns the homepage
    Given that there is a user
    And that user has a post
    When I visit "/" 
    Then I should should see "Homepage"
