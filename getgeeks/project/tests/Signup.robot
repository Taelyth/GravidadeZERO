*** Settings ***
Documentation       Signup Test Suite

Resource        ${EXEC_DIR}/resources/Base.robot

Test Setup      Start Session
Test Teardown   Finish Session

*** Test Cases ***
Register a new user

    ${user}     Factory User

    Go To Signup Form
    Fill Signup Form        ${user}
    Submit Signup Form
    User Should Be Registered