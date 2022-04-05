*** Settings ***
Documentation       Users rote test suite

Resource        ${EXEC_DIR}/resources/Base.robot

*** Test Cases ***
Add new user
    ${payload}      Factory New User

    ${response}             POST User       ${payload}
    Status Should Be        201             ${response}
