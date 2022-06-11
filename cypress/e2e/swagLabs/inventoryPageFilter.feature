Feature: Verify filtering on Inventory page

    Scenario Outline: Visting the Inventory and ordering all items
        Given I visit saucedemo.com
        When User enters username as 'standard_user' and password as 'secret_sauce'
        And User clicks on login button
        Then User is able to see inventory page
        When User select filter '<filterType>'
        Then Verify inventory items are sorted based on filter '<filterType>'
        Examples:
            | filterType          |
            | Name (A to Z)       |
            | Name (Z to A)       |
            | Price (low to high) |
            | Price (high to low) |

    Scenario: Verify remove and Add to cart functionality randomly
        Given I visit saucedemo.com
        When User enters username as 'standard_user' and password as 'secret_sauce'
        And User clicks on login button
        Then User is able to see inventory page
        When User select filter 'Price (low to high)'
        And User clicks Add to cart for item 'Sauce Labs Backpack'
        And User clicks Add to cart for item 'Sauce Labs Bike Light'
        Then User is able to see '2' item added in cart
        And User clicks Remove for item 'Sauce Labs Backpack'
        Then User is able to see '1' item added in cart

