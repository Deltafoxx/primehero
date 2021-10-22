*** Settings ***
Documentation        Neste arquivo estarão presentes todos os exercícios de automação do Curso Prime

***Variables***
#Minha primeira variável do tipo dicionário
&{PESSOA}
...        nome=Diogo    
...        sobrenome=Reis
...        idade=28
...        sexo=Masculino
...        cpf=12345678930    
...        profissao=Piramideiro
@{FRUTAS}    Banana    Abacaxi    Laranja    Limão
*** Test Cases ***
Cenario: Imprimindo 6 informações de uma pessoa
    Log To Console        ${PESSOA.nome}
    Log To Console        ${PESSOA.sobrenome}
    Log To Console        ${PESSOA.idade}
    Log To Console        ${PESSOA.sexo}
    Log To Console        ${PESSOA.cpf}
    Log To Console        ${PESSOA.profissao}
Cenario: Imprimindo lista de frutas
    [Tags]        LISTA
    Log To Console    ${FRUTAS}
Cenario: Somar dois numeros
    [Tags]        SOMAR
    Somar dois numeros    10    10
    ${RESULTADO}    Somar os numeros "5" e "10"
    Log To Console    ${RESULTADO}
Cenario: contando de 0 a 9
    [Tags]        CONTAR
    Contar de 0 a 9
Cenario: Percorrendo lista de frutas
    [Tags]    FRUTAS
    Percorrer itens de uma lista
Cenario: contando numeros
    [Tags]    CONTADOR
    Lista de numeros    
Cenario: listar paises
    [Tags]    PAISES
    Nome de paises
Cenario: tomar decisões
    [Tags]    IF
    Tomando decisões
*** Keywords ***
Somar dois numeros
    [Arguments]    ${NUM_A}    ${NUM_B}
    ${SOMA}    Evaluate    ${NUM_A}+${NUM_B} 
    [Return]    ${SOMA}  
Somar os numeros "${NUM_A}" e "${NUM_B}"

Contar de 0 a 9
    FOR    ${COUNT}    IN RANGE    0    11
    Log To Console    ${COUNT}
    END
Percorrer itens de uma lista
    @{FRUTAS}    Create List    Banana    Maça    Abacaxi
    FOR    ${FRUTA}    IN    @{FRUTAS}
        Log To Console    ${FRUTA}
    END    
Lista de numeros
    FOR    ${NUMERO}    IN RANGE    0    11
        Log To Console    Estou no número ${NUMERO}    
        
    END
Nome de paises
     @{PAISES}    Create List    Brasil    Alemanha    Chile    Venezuela    Portugal
     FOR    ${PAIS}    IN    @{PAISES}
         Log To Console    Estou no país ${PAIS}  
         
     END
Tomando decisões
    FOR    ${COUNT}    IN RANGE    0    11
        IF    ${COUNT} == 5 or ${COUNT} == 8
            Log To Console    Estou no número ${COUNT}
        ELSE
            Continue For Loop
            END
    END    