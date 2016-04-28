@selenium
Feature: Home Page and Stuff
  Background:
    Given that there is a user
    And that get_title method is stub to "New Title"
    And that user has a post as "user_1_post"
  Scenario: Visit root of the url path returns the homepage
    When I visit "/" 
    Then I should should see "New Title"
  Scenario: Visiting the homepage the user's post appears on it
    When I visit "/"
    Then I should see the post "user_1_post"