*Settings*
Documentation    Ações funcionalidade de usuário

*Keywords*
Ir para a tela de usuários
    click    css=a[href="/usuario/formulario"]

Preencher os Campos de Cadastro
    [Arguments]    ${nome}    ${cpf}    ${email}    ${senha}    ${urlFoto}

    Fill Text    id=nome       ${nome}
    Fill Text    id=cpf        ${cpf}
    Fill Text    id=email      ${email}
    Fill Text    id=senha      ${senha}
    Fill Text    id=urlFoto    ${urlFoto}

Clicar em Cadastrar
    Click    css=.btn >> text=Cadastrar