Feature: happy flow scenario

    Scenario Outline: Visting the Inventory and ordering all items
        Given I visit saucedemo.com
        When User enters username as '<username>' and password as '<password>'
        And User clicks on login button
        Then User is able to see inventory page
        When User clicks Add to cart for item 'Sauce Labs Backpack'
        Then User is able to see '1' item added in cart
        And User clicks on cart icon
        Then User is able to see cart page with 'Sauce Labs Backpack' added
        When User clicks on checkout button
        Then User is able to see checkout page one
        When User enters firstname as 'John' lastname as 'Anthony' and zipcode as '1001001'
        And User clicks on continue button
        Then User is able to see checkout page two with 'Sauce Labs Backpack' added
        And Item total is correct '$32.39'
        When User clicks on finish button
        Then User is able to see checkout complete page


        Examples:
            | username      | password     |
            | standard_user | secret_sauce |

