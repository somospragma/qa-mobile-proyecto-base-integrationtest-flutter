@tagFeature
Feature: Counter Feature

@Scenario1
Scenario: base counter
    When I press 'Increment' button
    Then I expect result '1'