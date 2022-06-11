class Inventory {
    buttonSauceLabsBackpack = '#add-to-cart-sauce-labs-backpack';
    cartLink = '.shopping_cart_link';
    cartCount = '.shopping_cart_badge';
    getPageTitle() {
        return cy.title()
    }
    addToCartItem(item)
    {
        if(item.includes('Sauce Labs Backpack'))
        cy.get(this.buttonSauceLabsBackpack).click();
    }

    clickOncart()
    {
        cy.get(this.cartLink).click();
    }

    checkCountCartItem(count)
    {
        cy.get(this.cartCount).contains(count)
    }
}
export default Inventory