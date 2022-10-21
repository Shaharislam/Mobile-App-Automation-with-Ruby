@home_screen
Feature: As a user I want to convert units

  @default
  Scenario: When I tap on menu icon, I should see left side menu
    Given   I land a Home Screen
    When    I press on menu icon
    Then    I should left side menu
    When    This is Test Scenario
   @rakib
  Scenario: I should be able to open My conversion screen
    Given   I land a Home Screen
    When    I press on menu icon
    And     I press on My Conversions button
    Then    I land on My conversions screen

    @conversion
Scenario Outline: Verify default conversion
  Given I land a Home Screen
  When  I type "<target>" to target text field
  Then  I should see result as "<result>"
  Examples:
    | target |result|
    |   1    |12    |
    |   2    |24    |
    |   3    |36    |
    |   4    |48    |
    |   5    |106   |
  @favorite
  Scenario: User able to add current conversion to favorites list
    Given I land a Home Screen
    Then I press on Add to Favorites icon
    When I press on menu icon
    Then I press on Favorite conversions
    And I verify "Length" added to Favorite conversions list