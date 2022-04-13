*** Settings ***
Documentation       Search for Geeks test suit

Resource        ${EXEC_DIR}/resources/Base.robot

Test Setup      Start Session
Test Teardown   After Test

*** Test Cases ***
Search for Alien Geek

    ${alien}        Factory User        search_alien
    Create Geek Profile Service     ${alien}

    ${searcher}     Factory User        searcher
    Do Login        ${searcher}

    Go To Geeks
    Fill Search Form        Sim         Matricial a fita colorida
    Submit Search Form

    Geek Should Be Found        ${alien}
    Alien Icon Should Be Visible

Search for Common Geek

    ${common}        Factory User        search_common
    Create Geek Profile Service     ${common}

    ${searcher}     Factory User        searcher
    Do Login        ${searcher}

    Go To Geeks
    Fill Search Form        Não         Instalo Distros Ubuntu
    Submit Search Form

    Geek Should Be Found        ${common}

Search Not Found

    ${searcher}     Factory User        searcher
    Do Login        ${searcher}

    Go To Geeks
    Fill Search Form        Não         Conserto Game Atari da Polivox
    Submit Search Form
    Geek Not Found