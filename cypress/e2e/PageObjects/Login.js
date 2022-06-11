class Login {

    constructor() {}

    username = '#user-name';
    password = '#password';
    submitButton = '#login-button';

    navigate() {
        cy.visit('https://www.saucedemo.com/')
    }

    fillCredentials(username, password) {
        cy.get(this.username).type(username)
        cy.get(this.password).type(password)
    }

    clickSubmit() {
        cy.get(this.submitButton).click()
    }
}
export default Login