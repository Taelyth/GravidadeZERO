*** Settings ***
Documentation       Database Helpers

Library     DatabaseLibrary

*** Keywords ***
Connect To Postgres
    Connect To Database     psycopg2
    ...                     lwoiywgo
    ...                     lwoiywgo
    ...                     sAhvTAeU4sSG3Iiu9hRKTE6-b0pvzUtk
    ...                     jelani.db.elephantsql.com
    ...                     5432

Reset Env
    Execute Sql String      DELETE from public.geeks
    Execute Sql String      DELETE from public.users