*Settings*
Documentation    Base dos arquivos de teste

Library    Browser
Library    utils.py

Resource    actions/UsuarioActions.robot
Resource    Database.robot

*Variables*

${urlBase}     http://localhost:8080
${BROWSER}     chromium
${HEADLESS}    False

*Keywords*
Acessar Página Web
    New Browser          ${BROWSER}         headless=${HEADLESS}    slowMo=00:00:00
    New Page             ${urlBase}/home
    Set Viewport Size    1280               768

Tirar Print
    Take Screenshot    fullPage=true    
