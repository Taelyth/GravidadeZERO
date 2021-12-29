*** Settings ***
Documentation       Suite de testes para preencher um formulário

Library    Browser

Test Setup  Start Session
Test Teardown  End Session

*** Test Cases ***
Devo preencher o formulario
    Click                       css=div.card:nth-child(2)
    Click                       css=span.text >> text=Practice Form
    Wait For Elements State     css=div.main-header >> text=Practice Form     visible     5
    Fill Text               id=firstName        Mestre
    Fill Text               id=lastName         Yoda
    Fill Text               id=userEmail        yoda@jedi.com

    Click                   id=state
    Click                   text=Haryana    # em xpath ficaria //*[text()='Haryana']

*** Keywords ***
Start Session
    New Browser     chromium     headless=False
    New Page    https://demoqa.com/

End Session
    Take Screenshot