*** Variables ***
${BROWSER}    Chrome
${URL}  https://atriamedicalcenter.com.br/

#ELEMENTOS
&{ELEMENTOS}
...    home=//div[contains(@data-id,'1cf5ee1')]
...    conceito=(//a[contains(.,'Conceito')])[1]
...    diferenciais=(//a[contains(@class,'raven-menu-item raven-link-item raven-menu-item-active')])[3]
...    estrutura=(//a[contains(.,'Estrutura')])[3]
...    quemSomos=(//a[contains(.,'Quem Somos')])[3]
...    localizacao=(//a[contains(.,'Localização')])[3]

#SEÇÕES
&{SECOES}      
...    conceito=https://atriamedicalcenter.com.br/#conceito
...    diferenciais=https://atriamedicalcenter.com.br/#diferenciais
...    estrutura=https://atriamedicalcenter.com.br/#estrutura
...    quemSomos=https://atriamedicalcenter.com.br/#quem-somos
...    localizacao=https://atriamedicalcenter.com.br/#localizacao

#TEXTOS
&{TEXTOS_SECAO}
...  home=ATRIA MEDICAL CENTER
...  conceito=Conceito 
...  diferenciais=DIFERENCIAIS
...  quemSomos=QUEM SOMOS
...  estrutura=ESTRUTURA
...  localizacao=LOCALIZAÇÃO