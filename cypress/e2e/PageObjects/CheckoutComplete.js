class CheckoutComplete {
    headerClass = '.complete-header';

    checkPageTitle(){
        cy.get(this.headerClass).contains('THANK YOU FOR YOUR ORDER');
    }
}
export default CheckoutComplete