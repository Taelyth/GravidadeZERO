*** Settings ***
Documentation       Users route

*** Keywords ***
POST User
    [Arguments]     ${payload}

    ${response}     POST
    ...             ${API_USERS}/users
    ...             json=${payload}
    ...             expected_status=any

    [Return]    ${response}

DELETE User
    [Arguments]     ${token}

    ${headers}       Create Dictionary      Authorization=${token}

    ${response}     DELETE
    ...             ${API_USERS}/users
    ...             headers=${headers}
    ...             expected_status=any

    [Return]    ${response}

GET User
    [Arguments]     ${token}

    ${headers}       Create Dictionary      Authorization=${token}

    ${response}     GET
    ...             ${API_USERS}/users
    ...             headers=${headers}
    ...             expected_status=any

    [Return]    ${response}