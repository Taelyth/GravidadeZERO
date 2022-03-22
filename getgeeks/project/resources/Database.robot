*** Settings ***
Documentation       Database Helpers

Library     DatabaseLibrary
Library     factories/Database.py
Library     factories/Users.py

*** Keywords ***
Connect To Postgres
    ${database}     Factory Database

    Connect To Database     psycopg2
    ...                     ${database}[banco]
    ...                     ${database}[usuario]
    ...                     ${database}[senha]
    ...                     ${database}[server]
    ...                     ${database}[porta]

Reset Env
    Execute Sql String      DELETE from public.geeks
    #Execute Sql String      TRUNCATE public.geeks RESTART IDENTITY -> Truncate reseta a PK (primary key)
    Execute Sql String      DELETE from public.users

Insert User
    [Arguments]     ${u}

    ${hashed_pass}          Get Hashed Pass     ${u}[password]

    ${q}    Set Variable    INSERT INTO public.users (name, email, password_hash, is_geek) values ('${u}[name] ${u}[lastname]', '${u}[email]', '${hashed_pass}', false)

    Execute Sql String      ${q}

Users Seed
    ${user}         Factory User    login
    Insert User     ${user}

    ${user2}        Factory User    be_geek
    Insert User     ${user2}

    ${user3}        Factory User    attempt_be_geek
    Insert User     ${user3}