Feature: Verify add and remove items on Inventory and Cart page

    Scenario: Verify remove and Add to cart on Inventory page
        Given I visit saucedemo.com
        When User enters username as 'standard_user' and password as 'secret_sauce'
        And User clicks on login button
        Then User is able to see inventory page
        And User clicks Add to cart for item 'Sauce Labs Backpack'
        And User clicks Add to cart for item 'Sauce Labs Bike Light'
        Then User is able to see '2' item added in cart
        And User clicks Remove for item 'Sauce Labs Backpack'
        Then User is able to see '1' item added in cart

    Scenario: Verify remove and Add to cart on cart page
        Given I visit saucedemo.com
        When User enters username as 'standard_user' and password as 'secret_sauce'
        And User clicks on login button
        Then User is able to see inventory page
        And User clicks Add to cart for item 'Sauce Labs Backpack'
        And User clicks Add to cart for item 'Sauce Labs Bike Light'
        And User clicks on cart icon
        Then User is able to see '2' item added in cart
        And User clicks Remove for item 'Sauce Labs Backpack'
        Then User is able to see '1' item added in cart        