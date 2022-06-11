Feature: Check total amount shown on check out page two is correct

    Scenario Outline: When user selects all the items verify sum total is correct on checkout page
        Given I visit saucedemo.com
        When User enters username as '<username>' and password as '<password>'
        And User clicks on login button
        Then User is able to see inventory page
        When User clicks Add to cart for item 'Sauce Labs Backpack'
        And User clicks Add to cart for item 'Sauce Labs Bike Light'
        And User clicks Add to cart for item 'Sauce Labs Bolt T-Shirt'
        And User clicks Add to cart for item 'Sauce Labs Fleece Jacket'
        And User clicks Add to cart for item 'Sauce Labs Onesie'
        And User clicks Add to cart for item 'Test.allTheThings() T-Shirt (Red)'
        And User clicks on cart icon
        When User clicks on checkout button
        When User enters firstname as 'John' lastname as 'Anthony' and zipcode as '1001001'
        And User clicks on continue button
        And Item total is correct '$140.34'


        Examples:
            | username      | password     |
            | standard_user | secret_sauce |

