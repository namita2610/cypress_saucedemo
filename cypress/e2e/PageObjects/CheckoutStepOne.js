/// <reference types="cypress" />
class CheckoutStepOne {
        titleClass='.title';
        textFirstname ='#first-name';
        textLastname = '#last-name';
        textZipcode = '#postal-code';
        buttonContinue = '#continue';

        checkPageTitle(){
            cy.get(this.titleClass).contains('Checkout: Your Information');
        }

        fillFirstName(textFirstname)
        {
            cy.get(this.textFirstname).type(textFirstname);
        }

        fillLastName(textLastname)
        {
            cy.get(this.textLastname).type(textLastname);
        }

        fillZipCode(textZipcode)
        {
            cy.get(this.textZipcode).type(textZipcode);
        }

        clickOnContinue()
        {
            cy.get(this.buttonContinue).click();
        }

}
export default CheckoutStepOne