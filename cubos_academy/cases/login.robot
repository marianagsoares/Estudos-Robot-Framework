*** Settings ***
Documentation    Essa suite testa a página login do site aulas.cubos.academy
Resource         ../main.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
CT001: Efetuar login com e-mail e senha válidos
    [Documentation]    Testa a funcionalidade de login do site aulas.cubos.academy, ao 
    ...    inserir email e senha válidos, resultando em login bem sucedido.
    [Tags]    login_sucesso
    Informar o e-mail "teste@gmail.com" no campo e-mail
    Informar a senha "teste123" no campo senha
    Submeter formulario de login
    Exibir pagina home

CT002: Efetuar login com e-mail válido e senha inválida
    [Documentation]    Testa a funcionalidade de login no site aulas.cubos.academy, ao ...
    ...    inserir email válido e senha inválida, resultando na não efetuação do login.
    [Tags]    login_sem_sucesso
    Informar o e-mail "teste@gmail.com" no campo e-mail
    Informar a senha "teste" no campo senha
    Submeter formulario de login
    Exibir feedback ${FEEDBACKS.credenciaisInvalidas}

CT003: Efetuar login com e-mail inválido e senha válida
    [Documentation]     Testa a funcionalidade de login no site aulas.cubos.academy, ao ...
    ...    inserir email inválido e senha válida, resultando na não efetuação do login.
    [Tags]    login_sem_sucesso
    Informar o e-mail "testegmail.com" no campo e-mail
    Informar a senha "teste123" no campo senha
    Submeter formulario de login
    Exibir feedback ${FEEDBACKS.formatoEmailInvalido}

CT004: Efetuar login com campo e-mail em branco e senha válida
    [Documentation]    Testa a funcionalidade de login no site aulas.cubos.academy, ao ...
    ...    inserir uma senha válida e deixar o campo de email em branco, resultando na não efetuação do login.
    [Tags]    login_sem_sucesso
    Informar o e-mail "" no campo e-mail
    Informar a senha "teste123" no campo senha
    Submeter formulario de login
    Exibir feedback ${FEEDBACKS.camposObrigatorios}

CT005: Efetuar login com campo e-mail válido e senha em branco
    [Documentation]    Testa a funcionalidade de login no site aulas.cubos.academy, ao ...
    ...    inserir um email válido e deixar o campo de senha em branco, resultando na não efetuação do login.
    [Tags]    login
    Informar o e-mail "teste@gmail.com" no campo e-mail
    Informar a senha "" no campo senha
    Submeter formulario de login
    Exibir feedback ${FEEDBACKS.camposObrigatorios}


CT006: Efetuar login com campos email e senha em branco
    [Documentation]    Testa a funcionalidade de login no site aulas.cubos.academy, ao ...
    ...    deixar em branco os campos email e senha, resultando na não efetuação do login.
    [Tags]    login
    Informar o e-mail "" no campo e-mail
    Informar a senha "" no campo senha
    Submeter formulario de login
    Exibir feedback ${FEEDBACKS.camposObrigatorios}