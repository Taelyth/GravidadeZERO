*** Settings ***
Documentation       Test Helpers

*** Keywords ***
Add User From Database
    [Arguments]     ${user}

    Connect To Postgres
    Insert User     ${user}
    Disconnect from Database

Do Login
    [Arguments]     ${user}

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    User Should Be Logged In    ${user}