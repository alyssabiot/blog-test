Feature: Posts list

  In order to read posts
  As a user
  I should be able to see a list of all posts

  Background:
    Given I am a registered user
    And I am logged in

  Scenario: Listing posts
    Given there are existing posts
    When I visit the homepage
    Then I should see the list of posts
