Feature: Login Function

@SuccessLogin
Scenario: Login Successfull
    Given the user enter the username 'admin'
    And the user enter the password 'admin'
    When the user taps the login button
    Then the user will see the form page

@FailedLogin
Scenario: Failed Login
    Given the user enter the username 'administrator'
    And the user enter the password '1234'
    When the user taps the login button
    Then the user will see the error message