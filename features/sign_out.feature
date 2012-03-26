Feature: Sign out of the application
  In order to prevent unauthorized access to my todos
  As a user
  I should be able to sign out of the application

  Scenario: Sign out
    Given I have signed in as "person@example.com"
    When I sign out
    Then I should be signed out
