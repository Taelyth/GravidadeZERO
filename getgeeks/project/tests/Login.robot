*** Settings ***
Documentation       Login test suite

Resource        ${EXEC_DIR}/resources/Base.robot

Test Setup      Start Session
Test Teardown   Finish Session

*** Test Cases ***
User Login

    ${user}         Factory User Login

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    User Should Be Logged In    ${user}

Incorrect pass
    [Tags]      inv_pass

    ${user}     Create Dictionary   email=teste@teste.com       password=abc123

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    Modal Content Should Be     Usuário e/ou senha inválidos.

User not found
    [Tags]      user_404

    ${user}     Create Dictionary   email=teste@404.net       password=abc123

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    Modal Content Should Be     Usuário e/ou senha inválidos.

Incorrect Email
    [Tags]      inv_email

    ${user}     Create Dictionary   email=teste.com.br       password=abc123

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    Should Be Type Email