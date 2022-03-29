*Settings*
Documentation    Arquivo de comunicação com o banco de dados

Library    DatabaseLibrary

*Keywords*
Conectar ao Banco de dados

    Connect To Database    pymysql    heroku_63b67e3b763618b    b6518411da7f9c    1b845470bbfd3ae    us-cdbr-east-05.cleardb.net    3306

Consultar Usuario por cpf
    Conectar ao Banco de dados

    [Arguments]        ${cpf}
    @{queryResults}    Query     SELECT * from usuario WHERE cpf = "${cpf}"

    Disconnect from Database

    [Return]    ${queryResults[0]}