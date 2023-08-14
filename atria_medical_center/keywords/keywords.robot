*** Settings ***
Resource   ../main.robot

*** Keywords ***
Abrir o navegador
    Open Browser    browser=${BROWSER}    url=${URL}
    Maximize Browser Window
Fechar o navegador
    Close Browser

Dado que o usuário está na seção ${ELEMENTO}
    Wait Until Element Is Visible    ${ELEMENTO}

Quando interagir com o elemento ${ELEMENTO}
    Wait Until Element Is Visible    ${ELEMENTO}
    Click Element    ${ELEMENTO}
 
Então deve ser direcionado para a seção ${SECAO}
    Go To    ${SECAO}

E deve visualizar o ${TEXTO_SECAO}
    Wait Until Page Contains    ${TEXTO_SECAO}