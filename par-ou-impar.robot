*** Settings ***
Library    BuiltIn
Library    Dialogs

*** Test Cases ***
Verificar Se O Número É Par Ou Ímpar
    ${numero} =    Get Value From User    Digite um número:
    ${numero} =    Convert To Integer    ${numero}
    ${resto} =    Evaluate    ${numero} % 2

    Run Keyword If    ${resto} == 0    
    ...    Execute Manual Step    O número ${numero} é PAR. Pressione PASS para finalizar.

    Run Keyword If    ${resto} != 0    
    ...    Execute Manual Step    O número ${numero} é ÍMPAR. Pressione PASS para finalizar.
