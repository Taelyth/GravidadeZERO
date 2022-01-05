*** Settings ***
Documentation       Suite de testes do cadastro de personagens

Library     ${EXEC_DIR}/resources/factories/users.py

Resource    ${EXEC_DIR}/resources/base.robot

Test Setup          Start Session
Test Teardown       End Session

*** Test Cases ***
Deve cadastrar um novo personagem
    [Tags]  happy

    ${user}     Factory Yoda

    Go To User Form
    Fill User Form      ${user}
    Select Jedi         ${user}[tpjedi]
    Check Accept Comunications
    Submit User Form
    Toaster Message Should Be       Usuário cadastrado com sucesso!
    Go To Home Page
    User Should Be Visible      ${user}

    #Sleep       1
    #${html}         Get Page Source
    #Log             ${html}

Email incorreto
    [Tags]  email_inv

    ${user}     Factory Darth Vader

    Go To User Form
    Fill User Form      ${user}
    Check Accept Comunications
    Submit User Form
    Toaster Message Should Be       Oops! O email é incorreto.