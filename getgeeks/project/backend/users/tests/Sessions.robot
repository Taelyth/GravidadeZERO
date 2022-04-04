*** Settings ***
Documentation       Sessions rote test suite

Library     RequestsLibrary

*** Variables ***
${API_USERS}        https://getgeeks-users-taelyth.herokuapp.com


*** Test Cases ***
User Session

    ${payload}      Create Dictionary       email=teste2@teste.com              password=pwd123

    ${response}     POST        ${API_USERS}/sessions       json=${payload}     expected_status=any

    Status Should Be        200                     ${response}

    ${size}                 Get Length              ${response.json()}[token]
    ${expected_size}        Convert To Integer      140

    Should Be Equal         ${expected_size}        ${size}
    Should Be Equal         10d                     ${response.json()}[expires_in]

Incorrect pass

    ${payload}      Create Dictionary       email=teste2@teste.com              password=abc123

    ${response}     POST        ${API_USERS}/sessions       json=${payload}     expected_status=any

    Status Should Be        401                     ${response}
    Should Be Equal         Unauthorized            ${response.json()}[error]

User not found

    ${payload}      Create Dictionary       email=teste2@404.com              password=abc123

    ${response}     POST        ${API_USERS}/sessions       json=${payload}     expected_status=any

    Status Should Be        401                     ${response}
    Should Be Equal         Unauthorized            ${response.json()}[error]

Incorrect email

    ${payload}      Create Dictionary       email=teste2.teste.com              password=abc123

    ${response}     POST        ${API_USERS}/sessions       json=${payload}     expected_status=any

    Status Should Be        400                     ${response}
    Should Be Equal         Incorrect email         ${response.json()}[error]

Empty email

    ${payload}      Create Dictionary       email=${EMPTY}              password=abc123

    ${response}     POST        ${API_USERS}/sessions       json=${payload}     expected_status=any

    Status Should Be        400                     ${response}
    Should Be Equal         Required email          ${response.json()}[error]

Without email

    ${payload}      Create Dictionary       password=abc123

    ${response}     POST        ${API_USERS}/sessions       json=${payload}     expected_status=any

    Status Should Be        400                     ${response}
    Should Be Equal         Required email          ${response.json()}[error]

Empty pass

    ${payload}      Create Dictionary       email=teste2@teste.com              password=${EMPTY}

    ${response}     POST        ${API_USERS}/sessions       json=${payload}     expected_status=any

    Status Should Be        400                     ${response}
    Should Be Equal         Required pass           ${response.json()}[error]

Without pass

    ${payload}      Create Dictionary       email=teste2@teste.com

    ${response}     POST        ${API_USERS}/sessions       json=${payload}     expected_status=any

    Status Should Be        400                     ${response}
    Should Be Equal         Required pass           ${response.json()}[error]