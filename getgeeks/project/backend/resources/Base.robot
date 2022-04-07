*** Settings ***
Documentation       Base test

Library     RequestsLibrary
Library     factories/Users.py
Library     Utils.py

Resource    routes/SessionsRoute.robot
Resource    routes/UsersRoute.robot
Resource    routes/GeeksRoute.robot

Resource    Helpers.robot

*** Variables ***
${API_USERS}        https://getgeeks-users-taelyth.herokuapp.com
${API_GEEKS}        https://getgeeks-geeks-taelyth.herokuapp.com