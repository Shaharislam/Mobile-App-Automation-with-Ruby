Feature: Test for home screen functionality

  Scenario: Default values on Home Screen is Foot and Centemeter
    Given I land on Home screen
    Then  Left Unit picker value should be "Foot"
    Then  Right Unit picker value should be "Inch"

  Scenario: Show all button should be embled at launch
    Given I land on Home screen
    Then  Show All button should be "enabled"
    When  I press on Clear button
    And   Show All button should be "disabled"