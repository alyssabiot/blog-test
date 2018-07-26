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

  Scenario: User logs in
    Given I am a registered user
    And I visit the homepage
    When I fill in the log in form
    Then I should be logged in

  Scenario: User logs out
    Given I am a registered user
    And I am logged in
    And I visit the homepage
    When I click on the log out button
    Then I should be redirected to the log in page
