*** Settings ***
Documentation       Delorean - Máquina do Tempo

Resource            ${EXEC_DIR}/resources/Database.robot

*** Tasks ***
Back To The Past

    ${database}     Factory Database

    Connect To Postgres     ${database}
    Reset Env
    Disconnect from Database


