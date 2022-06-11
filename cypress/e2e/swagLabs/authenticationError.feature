Feature: Verify Error messages on Login page

    Scenario: Error message on Login page when username and password is missing
        Given I visit saucedemo.com
        And User clicks on login button
        Then Error message is displayed "Epic sadface: Username is required"

    Scenario: Error message on Login page when username and password is missing
        Given I visit saucedemo.com
        When User enters username as 'standard_user' and password as ''
        And User clicks on login button
        Then Error message is displayed "Epic sadface: Password is required"
        