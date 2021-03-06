*** Settings ***
Documentation       Suite de testes para verificar se o app esta online

Library    Browser

Test Setup  Start Session
Test Teardown  End Session

*** Test Cases ***
Yodapp deve estar online
    Get Title    equal      QAninja - Where testers build better skills

Deve exibir mensagem na tela
    Wait For Elements State
         ...    css=h3 >> text=Destaque
         ...    visible     5

*** Keywords ***
Start Session
    New Browser     chromium     headless=False      slowMo=00:00:01
    New Page    https://qaninja.academy/

End Session
    Take Screenshot
