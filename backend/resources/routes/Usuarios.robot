**Settings**
Documentation    Implementação da rota de Usuários

*Keywords*

POST Users
    [Arguments]    ${payload}

    ${response}    POST    ${USER_API}    json=${payload}    expected_status=any

    [return]    ${response}