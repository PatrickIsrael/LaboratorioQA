*Settings*
Documentation    Database Actions

Library    DatabaseLibrary

*Keywords*
Conectar ao Banco de dados

    Connect To Database    pymysql    db_laboratorio_qa    root    admin01    127.0.0.1    3306

Consultar Usuario por cpf
    [Arguments]    ${cpf}

    @{queryResults}    Query    SELECT * from usuario WHERE cpf = "${cpf}"

    [Return]    ${queryResults[0]}