**Settings**
Documentation    Suíte de testes da rota de Usuários

Resource    ${EXECDIR}/resources/Base.robot

*Test Cases*
Cadastrar Usuário

    ${user}    New User    Teste API    api@teste.com    Teste123    128.006.807-84    https://www.xenonstack.com/hubfs/xenonstack-api-testing-tools.png

    ${response}    POST Users    ${user}

    Status Should be                  201    ${response} 
    Should Not Be Equal As Strings    0      ${response.json()}[usuario][id]