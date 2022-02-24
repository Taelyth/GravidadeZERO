*** Settings ***
Documentation       Database Helpers

Library     DatabaseLibrary
Library     factories/Database.py

*** Keywords ***
Connect To Postgres
    [Arguments]     ${database}

    Connect To Database     psycopg2
    ...                     ${database}[banco]
    ...                     ${database}[usuario]
    ...                     ${database}[senha]
    ...                     ${database}[server]
    ...                     ${database}[porta]

Reset Env
    Execute Sql String      DELETE from public.geeks
    Execute Sql String      DELETE from public.users