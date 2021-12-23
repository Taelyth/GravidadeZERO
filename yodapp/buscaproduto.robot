*** Settings ***
Documentation       Suite de testes de pesquisar produto

Resource        base.robot

Test Setup      Start Session
Test Teardown       End Session

*** Test Cases ***
Deve Pesquisar e Encontrar o Produto

    Fill Text                   id=search-input     perfect world
    Keyboard Key                press               Enter

    # Checkpoint para saber se fomos para a próxima página
    Wait For Elements State     css=h2 >> text=Créditos
           ...                  visible     5

