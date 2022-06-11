/// <reference types="cypress" />
class CheckoutStepTwo {
    titleClass='.title';
    buttonFinish = '#finish';
    inventoryItemList = '.inventory_item_name';
    labelTotalAmount = '.summary_total_label'

    checkPageTitle(){
        cy.get(this.titleClass).contains('Checkout: Overview');
    }

    clickOnFinish()
    {
        cy.get(this.buttonFinish).click();
    }

    checkInventoryItemVisible(item) {
        cy.get(this.inventoryItemList).contains(item).should('exist')
    }

    checkTotalAmount(amount)
    {
        cy.get(this.labelTotalAmount).contains(amount)
    }

}
export default CheckoutStepTwo