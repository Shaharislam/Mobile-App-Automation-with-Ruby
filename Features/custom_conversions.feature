Feature: User able to create and manage custom conversions
  @wip
  Scenario: User able to create new conversions
    Given I land on Home screen
    Then I press on menu icon
    Then I press on My Conversions button
    Then I press on Create your first conversion button
    Then  I type "Power" as custom conversion name
    When I press on New unit button
    Then I type "Hours power" as unit name
    Then I type "HP" as unit symbol
    Then I type "1" as unit value
    Then I press submit checkmark on Custom conversions screen
    When I press on New unit button
    Then I type "Mule power" as unit name
    Then I type "MP" as unit symbol
    Then I type "0.5" as unit value
    Then I press submit checkmark on Custom conversions screen
    Then I press on Ok button on Custom conversions screen
    Then I verify "Length" added to Custom conversions list
