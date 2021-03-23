*** Settings ***
Library    SeleniumLibrary    
Library    RequestsLibrary
Library    JSONLibrary    
Library    Collections        

*** Variables ***

${Base_URL}    http://thetestingworldapi.com/

*** Test Cases ***
TC_postReq1
    Create Session    AddData    ${Base_URL} 
    
    &{body}=    Create Dictionary    first_name=Badis    middle_name=terbachov    last_name=Badicov    date_of_birth=May1980
    
    ${response}=    Post On Session    AddData    /api/studentsDetails    data=${body}

    ${code}    Convert To String    ${response.status_code}
    Should Be Equal    ${code}    201    

    Log To Console    ${response.status_code}     
    Log To Console    ${response.content}     
