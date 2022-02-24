*** Settings ***
Documentation       Signup Test Suite

Resource        ${EXEC_DIR}/resources/Base.robot

Test Setup      Start Session
Test Teardown   Finish Session

*** Test Cases ***
Register a new user

    ${user}     Factory User

    Set Suite Variable  ${user}

    Go To Signup Form
    Fill Signup Form        ${user}
    Submit Signup Form
    User Should Be Registered

Duplicate User

    Go To Signup Form
    Fill Signup Form        ${user}
    Submit Signup Form
    Modal Content Should Be     Já temos um usuário com o e-mail informado.