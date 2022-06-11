/// <reference types="cypress" />
class Cart {
    inventoryItemList = '.inventory_item_name';
    buttonCheckout ='#checkout';

    checkInventoryItemVisible(item) {
        cy.get(this.inventoryItemList).contains(item).should('exist')
    }

    clickOnCheckout()
    {
        cy.get(this.buttonCheckout).click();
    }

}
export default Cart