Feature: Verify Error when user details are not entered 

    Scenario Outline: Error when first name is missing
        Given I visit saucedemo.com
        When User enters username as 'standard_user' and password as 'secret_sauce'
        And User clicks on login button
        Then User is able to see inventory page
        When User clicks Add to cart for item 'Sauce Labs Backpack'
        And User clicks on cart icon
        Then User is able to see cart page with 'Sauce Labs Backpack' added
        When User clicks on checkout button
        And User clicks on continue button
        Then User is able to see error 'Error: First Name is required'

    Scenario Outline: Error when last name is missing
        Given I visit saucedemo.com
        When User enters username as 'standard_user' and password as 'secret_sauce'
        And User clicks on login button
        Then User is able to see inventory page
        When User clicks Add to cart for item 'Sauce Labs Backpack'
        And User clicks on cart icon
        Then User is able to see cart page with 'Sauce Labs Backpack' added
        When User clicks on checkout button
        And User enters firstname as 'John' lastname as '' and zipcode as '1001001'
        And User clicks on continue button
        Then User is able to see error 'Error: Last Name is required'

     Scenario Outline: Error when zip code is missing
        Given I visit saucedemo.com
        When User enters username as 'standard_user' and password as 'secret_sauce'
        And User clicks on login button
        Then User is able to see inventory page
        When User clicks Add to cart for item 'Sauce Labs Backpack'
        And User clicks on cart icon
        Then User is able to see cart page with 'Sauce Labs Backpack' added
        When User clicks on checkout button
        And User enters firstname as 'John' lastname as '' and zipcode as '1001001'
        And User clicks on continue button
        Then User is able to see error 'Error: Postal Code is required'       