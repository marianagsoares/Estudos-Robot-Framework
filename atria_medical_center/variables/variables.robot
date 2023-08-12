*** Variables ***
${BROWSER}    Chrome
${URL}  https://atriamedicalcenter.com.br/

#ELEMENTOS
&{ELEMENTOS}
...    home=//div[contains(@data-id,'1cf5ee1')]
...    conceito=(//a[contains(.,'Conceito')])[1]
...    diferenciais=(//a[contains(.,'Diferenciais')])[1]
...    quemSomos=(//a[contains(.,'Quem Somos')])[1]
...    estrutura=(//a[contains(.,'Estrutura')])[1]
...    localizacao=(//a[contains(.,'Localização')])[1]

#SEÇÕES
&{SECOES}      
...    conceito=https://atriamedicalcenter.com.br/#conceito
...    diferenciais=https://atriamedicalcenter.com.br/#diferenciais
...    estrutura=https://atriamedicalcenter.com.br/#estrutura
...    quemSomos=https://atriamedicalcenter.com.br/#quem-somos
...    localizacao=https://atriamedicalcenter.com.br/#localizacao

#TEXTOS
&{TEXTOS_SECAO}  
...  conceito=Conceito 
...  diferenciais=DIFERENCIAIS
...  quemSomos=QUEM SOMOS
...  estrutura=ESTRUTURA
...  localizacao=LOCALIZAÇÃO