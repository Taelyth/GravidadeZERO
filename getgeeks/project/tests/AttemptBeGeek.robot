*** Settings ***
Documentation       Tentativa de Ser um Geek

Resource        ${EXEC_DIR}/resources/Base.robot

Suite Setup     Start Session For Attempt Be a Geek
Test Template   Attempt Be a Geek

*** Variables ***
${long_desc}    Seu computador está lento? Reiniciando do nada? Talvez seja um vírus, ou algum hardware com defeito. Posso fazer a manutenção no seu PC, formatando, reinstalando o SO, trocando algum componente físico e porque não remover o baidu e outros Mawares do computador?


*** Test Cases ***
Short desc              desc                Formato o seu PC.       A descrição deve ter no minimo 80 caracteres
Long desc               desc                ${long_desc}            A descrição deve ter no máximo 255 caracteres
Empty desc              desc                ${EMPTY}                Informe a descrição do seu trabalho
Whats only ddd          whatsapp            11                      O Whatsapp deve ter 11 digitos contando com o DDD
Whats without ddd       whatsapp            999999999               O Whatsapp deve ter 11 digitos contando com o DDD
Empty whats             whatsapp            ${EMPTY}                O Whatsapp deve ter 11 digitos contando com o DDD
Cost letters            cost                aaaa                    Valor hora deve ser numérico
Cost alpha              cost                aa12                    Valor hora deve ser numérico
Cost special chars      cost                $##@!#!@                Valor hora deve ser numérico
Empty cost              cost                ${EMPTY}                Valor hora deve ser numérico
No printer repair       printer_repair      ${EMPTY}                Por favor, informe se você é um Geek Supremo
No work                 work                ${EMPTY}                Por favor, selecione o modelo de trabalho


*** Keywords ***
Attempt Be a Geek
    [Arguments]     ${key}      ${input_field}      ${output_message}

    ${user}     Factory User        attempt_be_geek

    Set To Dictionary           ${user}[geek_profile]   ${key}      ${input_field}

    Fill Geek Form              ${user}[geek_profile]
    Submit Geek Form
    Alert Span Should Be        ${output_message}

    After Test

Start Session For Attempt Be a Geek

    ${user}     Factory User        attempt_be_geek

    Start Session
    Do Login        ${user}
    Go To Geek Form