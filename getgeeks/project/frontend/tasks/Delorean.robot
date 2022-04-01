*** Settings ***
Documentation       Delorean - Máquina do Tempo

Resource            ${EXEC_DIR}/resources/Database.robot

*** Tasks ***
Back To The Past

    Connect To Postgres
    Reset Env
    Users Seed
    Disconnect from Database


