*** Settings ***
Documentation       Seja um Geek - Test Suit

Resource        ${EXEC_DIR}/resources/Base.robot

Test Setup      Start Session
Test Teardown   Finish Session

*** Test Cases ***
Be a Geek

    # Dado que eu tenho um usuário comum
    ${user}     Factory User Be Geek

    # Faço Login na plataforma Getgeeks
    Do Login            ${user}

    # Quando submeto o formulário para me tornar um Geek (prestador de serviço)
    Go To Geek Form
    Fill Geek Form      ${user}[geek_profile]
    Submit Geek Form

    # Então devo ver a mensagem de sucesso
    Geek Form Should Be Success
