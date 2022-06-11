Feature: Verify back n forth scenarios

    Scenario: Verify item in cart remains when user clicks on Continue Shopping button on cart page
        Given I visit saucedemo.com
        When User enters username as 'standard_user' and password as 'secret_sauce'
        And User clicks on login button
        Then User is able to see inventory page
        When User clicks Add to cart for item 'Sauce Labs Backpack'
        And User clicks Add to cart for item 'Sauce Labs Bike Light'
        Then User is able to see '2' item added in cart
        When User clicks on cart icon
        Then User is able to see cart page with 'Sauce Labs Backpack' added
        Then User is able to see cart page with 'Sauce Labs Bike Light' added
        When User clicks on continue Shopping button
        Then User is able to see inventory page
        And User is able to see '2' item added in cart

   Scenario: Verify user is back on cart page when user clicks on Cancel button on checkout one page
        Given I visit saucedemo.com
        When User enters username as 'standard_user' and password as 'secret_sauce'
        And User clicks on login button
        Then User is able to see inventory page
        When User clicks Add to cart for item 'Sauce Labs Backpack'
        Then User is able to see '1' item added in cart
        When User clicks on cart icon
        And User clicks on checkout button
        Then User is able to see checkout page one
        And User clicks on cancel button
        Then User is able to see cart page with 'Sauce Labs Backpack' added

   Scenario: Verify user is back on inventory page when user clicks on Cancel button on checkout two page
        Given I visit saucedemo.com
        When User enters username as 'standard_user' and password as 'secret_sauce'
        And User clicks on login button
        When User clicks Add to cart for item 'Sauce Labs Backpack'
        And User clicks on cart icon
        And User clicks on checkout button
        When User enters firstname as 'John' lastname as 'Anthony' and zipcode as '1001001'
        And User clicks on continue button
        Then User is able to see checkout page two with 'Sauce Labs Backpack' added
        And User clicks on cancel button
        Then User is able to see inventory page
        Then User is able to see '1' item added in cart   

   Scenario: Verify user is back on inventory page after viewing the items details
        Given I visit saucedemo.com
        When User enters username as 'standard_user' and password as 'secret_sauce'
        And User clicks on login button
        When User clicks on item name 'Sauce Labs Backpack'
        And User is able to see iventory item details page
        And User clicks on back to products button
        Then User is able to see inventory page
        