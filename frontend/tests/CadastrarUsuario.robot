*Settings*
Documentation    Suite de Testes da tela de cadastro de usuário

Resource    ${EXECDIR}/resources/Base.robot

Test Setup       Acessar Página Web
Test Teardown    Tirar Print

*Test Cases*
Cadastrar usuário

    Ir para a tela de usuários
    Preencher os Campos de Cadastro    Teste cadastro    cadastro@teste.com    Teste123    128.006.807-84    https://www.aplicaplacas.com.br/uploads/img/550/placa-sinalizacao-cuidado-area-de-teste-9e8ab87cf00f1eba23f4f4103251680a.jpg
    Clicar em Cadastrar

    Conectar ao Banco de dados
    ${usuario}                    Consultar Usuario por cpf    128.006.807-84