*** Settings ***
Documentation       Base Test

Library     Browser
Library     Collections

Library     factories/Users.py

Resource    actions/_SharedActions.robot
Resource    actions/AuthActions.robot
Resource    actions/GeekActions.robot
Resource    actions/SignupActions.robot

Resource    Database.robot
Resource    Helpers.robot

*** Variables ***
${BASE_URL}         https://getgeeks-taelyth.herokuapp.com

*** Keywords ***
Start Session
    New Browser             chromium        headless=False      #slowMo=00:00:00.5
    New Page                ${BASE_URL}
    Set Viewport Size       1280            768

Finish Session
    Take Screenshot         fullPage=True