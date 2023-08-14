*** Settings ***
Documentation    Essa suite testa a navegação entre as seções do site https://atriamedicalcenter.com.br/#conceito
Resource          ../main.robot
Suite Setup       Abrir o navegador
Suite Teardown    Fechar o navegador

*** Test Cases ***
CT001: Navegar para a seção Conceito
    [Documentation]    Testa a navegação para seção Conceito
    [Tags]    navegacao_entre_secoes

    Dado que o usuário está na seção ${TEXTOS_SECAO.home}
    Quando interagir com o elemento ${ELEMENTOS.conceito}
    Então deve ser direcionado para a seção ${SECOES.conceito}
    E deve visualizar o ${TEXTOS_SECAO.conceito}

CT002: Navegar para a seção Diferenciais 
    [Documentation]    Testa a navegação para seção Diferenciais
    [Tags]    navegacao_entre_secoes

    Dado que o usuário está na seção ${TEXTOS_SECAO.conceito}
    Quando interagir com o elemento ${ELEMENTOS.diferenciais}
    Então deve ser direcionado para a seção ${SECOES.diferenciais}
    E deve visualizar o ${TEXTOS_SECAO.diferenciais}
    
CT003: Navegar para a seção Estrutura 
    [Documentation]    Testa a navegação para seção Estrutura
    [Tags]    navegacao_entre_secoes

    Dado que o usuário está na seção ${TEXTOS_SECAO.diferenciais}  
    Quando interagir com o elemento ${ELEMENTOS.estrutura} 
    Então deve ser direcionado para a seção ${SECOES.estrutura}
    E deve visualizar o ${TEXTOS_SECAO.estrutura}

CT004: Navegar para a seção Quem Somos 
    [Documentation]    Testa a navegação para seção QuemSomos
    [Tags]    navegacao_entre_secoes

    Dado que o usuário está na seção ${TEXTOS_SECAO.estrutura}
    Quando interagir com o elemento ${ELEMENTOS.quemSomos} 
    Então deve ser direcionado para a seção ${SECOES.quemSomos}
    E deve visualizar o ${TEXTOS_SECAO.quemSomos}

CT005: Navegar para a seção Localização 
    [Documentation]    Testa a navegação para seção Localização
    [Tags]    navegacao_entre_secoes

    Dado que o usuário está na seção ${TEXTOS_SECAO.quemSomos} 
    Quando interagir com o elemento ${ELEMENTOS.localizacao}
    Então deve ser direcionado para a seção ${SECOES.localizacao}
    E deve visualizar o ${TEXTOS_SECAO.localizacao}