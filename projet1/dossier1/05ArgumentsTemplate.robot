*** Test Cases ***
TC001
    Log    ${CURDIR}
    Log    ${EXECDIR}    
    Log    ${SUITE_NAME}    
    Log    ${TEST_NAME} ${:} ${REPORT_FILE}    

TC002
    ${fn}=    Set Variable    Badis
    ${ln}=    Set Variable    Assas
    Log    ${fn}${SPACE}${ln} run this test
    
TC003
    [Template]    Fonct1
    Badis    Assas    Man
    Amir    Assas    Boy
    Dina    Assas    Girl
    Keltoum    Arafa    Woman


*** Keywords ***
Fonct1
    [Arguments]    ${fn}    ${ln}    ${sex}
    Log    ${fn}${SPACE}${ln} is a${SPACE}${sex}