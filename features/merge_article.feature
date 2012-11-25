Feature: Merge Articles
  As a blog administrator
  In order to make blog articles more complete and powerful
  I want to be able to merge articles together

  Background:
    Given the blog is set up
    And I have an article
    And there is a non-admin user with an article

  Scenario: A non-admin cannot merge articles.
    Given I am logged as a non-admin user
    When I try to merge an article
    Then I should see an error page

  Scenario: When articles are merged, the merged article should contain the text of both previous articles.
    Given I am logged as an admin user
    When I merged two articles
    And I look at the merged article
    Then I should see both texts merged
