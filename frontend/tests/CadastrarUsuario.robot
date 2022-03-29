*Settings*
Documentation    Suite de Testes do cadastro de usuários

Resource    ${EXECDIR}/resources/Base.robot

Test Setup       Acessar Página Web
Test Teardown    Tirar Print

*Test Cases*
Cadastrar usuário

    Ir para a tela de usuários
    Preencher os Campos de Cadastro    Teste cadastro    128.006.807-84    cadastro@teste.com    Teste123    https://www.aplicaplacas.com.br/uploads/img/550/placa-sinalizacao-cuidado-area-de-teste-9e8ab87cf00f1eba23f4f4103251680a.jpg
    Clicar em Cadastrar

    ${usuario}                    Consultar Usuario por cpf    128.006.807-84
    Should be Equal As Strings    CADASTRADO                   ${usuario[5]}
