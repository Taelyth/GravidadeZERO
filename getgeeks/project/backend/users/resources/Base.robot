*** Settings ***
Documentation       Base test

Library     RequestsLibrary
Library     Factories/Users.py

Resource    routes/SessionsRoute.robot
Resource    routes/UsersRoute.robot

Resource    Helpers.robot

*** Variables ***
${API_USERS}        https://getgeeks-users-taelyth.herokuapp.com