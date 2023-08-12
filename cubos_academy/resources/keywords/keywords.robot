*** Settings ***
Resource   ../../main.robot

*** Keywords ***
Abrir o navegador
    Open Browser    url=${URL}    browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Informar o e-mail "${EMAIL}" no campo e-mail
    Wait Until Element Is Visible    ${INPUTS.email} 
    Input Text    ${INPUTS.email}     ${EMAIL}

Informar a senha "${SENHA}" no campo senha
    Wait Until Element Is Visible    ${INPUTS.senha} 
    Input Password    ${INPUTS.senha}    ${SENHA}

Submeter formulario de login 
    Wait Until Element Is Visible    ${SUBMIT_BUTTON} 
    Click Button    ${SUBMIT_BUTTON}

Exibir pagina home
    Wait Until Page Contains    ${TITULO_INICIO} 

Exibir feedback ${FEEDBACK}
    Wait Until Page Contains  ${FEEDBACK}