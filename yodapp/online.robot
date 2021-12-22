*** Settings ***
Documentation       Suite de testes para verificar se o app esta online

Library    Browser

*** Test Cases ***
Yodapp deve estar online

    New Browser    chromium     headless=False      slowMo=00:00:01
    New Page    https://qaninja.academy/

    Get Title    equal      QAninja - Where testers build better skills

    Take Screenshot

Deve exibir mensagem na tela

    New Browser    chromium     headless=False      slowMo=00:00:01
    New Page    https://qaninja.academy/

    Wait For Elements State
         ...    css=h3 >> text=Destaque
         ...    visible     5

    Take Screenshot