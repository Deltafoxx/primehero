***Variables***
&{PESSOA}
...        nome=diogo    
...        sobrenome=Reis
...        idade=28
*** Test Cases ***
Cenario: Criando email
    [Tags]    CRIAR
    ${RESULTADO}    Criar email    ${PESSOA.nome}    ${PESSOA.sobrenome}    ${PESSOA.idade}  
    Log To Console    ${RESULTADO}
*** Keywords ***
Criar email
    [Arguments]    ${NOME}    ${SOBRENOME}    ${IDADE}
    ${EMAIL}    Catenate    ${NOME}_${SOBRENOME}_${IDADE}@yahoo.com.br
    [Return]    ${EMAIL} 
      
