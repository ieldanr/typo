Feature: Edit Categories
  As a blog administrator
  In order to edit categories and stuff
  I want to be able to enter categorie edit screen

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: I should be able to access the category page
    Given I am on the new category page
    Then I should not see "ActiveRecord::RecordNotFound"
    Then I should see "Categories"
    Then I should see "Save"
