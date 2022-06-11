class InventoryItem {
    buttonBackToProducts = '#back-to-products';

    clickOnBackToProducts()
    {
        cy.get(this.buttonBackToProducts).click();
    }
}
export default InventoryItem