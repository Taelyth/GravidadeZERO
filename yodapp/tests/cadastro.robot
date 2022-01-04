*** Settings ***
Documentation       Suite de testes do cadastro de personagens

Resource    ${EXEC_DIR}/resources/base.robot

Test Setup          Start Session
Test Teardown       End Session

*** Test Cases ***
Deve cadastrar um novo personagem
    [Tags]  happy

    Go To User Form
    Fill User Form      Mestre Yoda     yoda@jedi.com       Jedi        novembro-1977-18        @yoda
    Select Jedi         Cavaleiro Jedi
    Check Accept Comunications
    Submit User Form
    Toaster Message Should Be       Usuário cadastrado com sucesso!

    #Sleep       1
    #${html}         Get Page Source
    #Log             ${html}

Email incorreto
    [Tags]  email_inv
    Go To User Form
    Fill User Form      Darth Vader     vader&sith.com      Sith        junho-1999-24        @vader
    Check Accept Comunications
    Submit User Form
    Toaster Message Should Be       Oops! O email é incorreto.