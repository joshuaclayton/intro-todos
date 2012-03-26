Feature: Create Todos
  In order to track things I need to do
  As a user
  I should be able to create a new todo

  Scenario: Create a todo
    Given I have signed in
    When I create a todo titled "Buy some milk on the way home"
    Then "Buy some milk on the way home" should be in my list of things to do
