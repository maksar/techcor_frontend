Feature: Cucumber web testing
  In order to view list of projects
  As a web user
  I want to see them

  Background:
    Given catalog filled by seeds script

  Scenario: view projects page
    Given I am on projects page
    Then I should see "TC"
    And I should see "Anagrams"

  Scenario: proceed to details page
    Given I am on projects page
    When I follow "TC"
    And I should be on TC project page

  Scenario: viewing project details
    Given I am on TC project page
    And I should see "Technology"

  Scenario: going back to the list of projects
    Given I am on TC project page
    When I follow "Home"
    Then I should be on projects page
