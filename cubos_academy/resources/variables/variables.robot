*** Variables ***
${BROWSER}    chrome
${URL}        https://aulas.cubos.academy/login

#Elementos da página
&{INPUTS}    
...    email=//input[@name='email']    
...    senha=//input[@name='password']

${SUBMIT_BUTTON}         xpath=//button[contains(.,'Acessar')]

&{FEEDBACKS}    
...    credenciaisInvalidas=Email ou senha incorretos.
...    camposObrigatorios=Este campo deve ser preenchido

#Textos da página
${TITULO_INICIO}         Início