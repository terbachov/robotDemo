*** Settings ***
Library    SeleniumLibrary    
Library    RequestsLibrary
Library    JSONLibrary    
Library    Collections        

*** Variables ***

${Base_URL}    http://thetestingworldapi.com/

*** Test Cases ***
TC_DelReq
    Create Session    AddData    ${Base_URL} 
    
    &{body}=    Create Dictionary    id=108600    first_name=Amir    middle_name=Mirou    last_name=Assas    date_of_birth=April2019
    
    ${response}=    Put On Session    AddData    api/studentsDetails/108600    data=${body}

    ${code}    Convert To String    ${response.status_code}
    Should Be Equal    ${code}    200    

    Log To Console    ${response.status_code}     
    Log To Console    ${response.content}     

