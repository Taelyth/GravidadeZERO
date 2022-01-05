*** Settings ***
Documentation       Ações customizadas do Yodapp

*** Keywords ***
Go To Home Page
    Go To       ${BASE_URL}
    Wait For Elements State     css=.carousel       visible     5

Go To User Form
    ${element}      Set Variable    css=.card-header-title
    # ---
    # Dado que acesso o formulário de cadastro
    # ---
    Click  text=Novo

    # Checkpoint para saber se fomos de fato para a página de cadastro
    Wait For Elements State     ${element}      visible     5
    Get Text                    ${element}      contains     Cadastrar

Fill User Form
    [Arguments]     ${user}
    # ---
    # Quando preencho esse formulário com os dados do Mestre Yoda
    # ---
    Fill Text       css=input[name="nome"]      ${user}[name]
    Fill Text       css=input[name="email"]     ${user}[email]

    Select Options By       css=.ordem select      text        ${user}[ordem]

    # Em css ficaria input[value="Cavaleiro Jedi"] + span -> que é .child + .sibling

    Select Birth Date       ${user}[bdate]

    Fill Text       id=insta                     ${user}[instagram]



Select Jedi
    [Arguments]     ${tpjedi}
    Click           xpath=//input[@value="${tpjedi}"]/../span[@class="check"]

Check Accept Comunications
    Click           css=input[name="comunications"] + span

Select Birth Date
    [Arguments]             ${text_date}

    @{date}                 Split String    ${text_date}    -

    Click                   css=input[name$="nascimento"]
    Select Options By       css=.datepicker-header .control:nth-of-type(1) select      # em xpath ficaria dessa forma:
    ...                     text        ${date}[0]            # xpath=(//header[@class="datepicker-header"]//select)[1]
    Select Options By       xpath=(//header[@class="datepicker-header"]//select)[2]
    ...                     value        ${date}[1]
    Click                   xpath=//a[contains(@class, "datepicker-cell")]//span[text()="${date}[2]"]
    # ou em css+text = css:.datepicker-cell >> text=18

Submit User Form
    # ---
    # E submeto esse formulário
    # ---
    Click           css=button >> text=Cadastrar

Toaster Message Should Be
    # ---
    # Então devo ver a mensagem de sucesso
    # ---
    [Arguments]     ${expected_message}

    ${element}      Set Variable    css=.toast div

    Wait For Elements State     ${element}      visible     5
    Get Text                    ${element}      equal       ${expected_message}

User Should Be Visible
    [Arguments]     ${user}

    ${element}      Set Variable    xpath=//td[contains(text(), "${user}[email]")]/..

    Wait For Elements State         ${element}      visible     5
    Get Text        ${element}      contains        ${user}[name]
    Get Text        ${element}      contains        ${user}[email]
    Get Text        ${element}      contains        ${user}[instagram]