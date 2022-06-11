import { Given, And, Then, When } from "cypress-cucumber-preprocessor/steps";
import Login from "../../PageObjects/Login";
import Inventory from "../../PageObjects/Inventory";
import Cart from "../../PageObjects/Cart";
import CheckoutStepOne from "../../PageObjects/CheckoutStepOne";
import CheckoutStepTwo from "../../PageObjects/CheckoutSetpTwo";
import CheckoutComplete from "../../PageObjects/CheckoutComplete";

/// <reference types="cypress" />
const login = new Login();
const inventory= new Inventory();
const cart = new Cart();
const checkoutStepOne=new CheckoutStepOne();
const checkoutStepTwo=new CheckoutStepTwo();
const checkoutComplete=new CheckoutComplete();

Given('I visit saucedemo.com', () => {
    login.navigate();
})

When('User enters username as {string} and password as {string}', (username, password) => {
    login.fillCredentials(username,password);
})

And('User clicks on login button', () => {
    login.clickSubmit();
})

Then('User is able to see inventory page', () => {
    inventory.getPageTitle().should('eq','Swag Labs')
})

And('User clicks Add to cart for item {string}', (item) => {
    inventory.addToCartItem(item);
});

And('User clicks on cart icon', () => {
    inventory.clickOncart();
})

And('User is able to see cart page with {string} added', (item) => {
    cart.checkInventoryItemVisible(item);
});

And('User clicks on checkout button', () => {
    cart.clickOnCheckout();
})

And('User is able to see checkout page one', () => {
    checkoutStepOne.checkPageTitle();
})

And('User enters firstname as {string} lastname as {string} and zipcode as {string}', (firstname, lastname,zipcode) => {
    checkoutStepOne.fillFirstName(firstname);
    checkoutStepOne.fillLastName(lastname);
    checkoutStepOne.fillZipCode(zipcode);
})

And('User clicks on continue button', () => {
    checkoutStepOne.clickOnContinue();
})

Then('User is able to see checkout page two with {string} added', (item) => {
    checkoutStepTwo.checkPageTitle();
    checkoutStepTwo.checkInventoryItemVisible(item);
});

And('User clicks on finish button', () => {
    checkoutStepTwo.clickOnFinish();
})

Then('User is able to see checkout complete page', () => {
    checkoutComplete.checkPageTitle();
})

Then('Item total is correct {string}', (amount) => {
    checkoutStepTwo.checkTotalAmount(amount);
});

Then('User is able to see {string} item added in cart', (count) => {
    inventory.checkCountCartItem(count);
});

beforeEach(() => {
    cy.clearCookies()
  })