*** Settings ***
Library    SeleniumLibrary    
Library    RequestsLibrary    

*** Variables ***

${Base_URL}    http://thetestingworldapi.com/
${StudID}=    108581 

*** Test Cases ***

TC_GetReq
    Create Session    Get_student_Details    ${Base_URL} 
   
    ${reponse}=    Get On Session    Get_student_Details    api/studentsDetails
    Log To Console    ${reponse} ${reponse} ${reponse}    
 

TC_GetReq2
    Create Session    Get_student_Details    ${Base_URL} 
   
    ${reponse}=    Get On Session    Get_student_Details    api/studentsDetails
    Log To Console    ${reponse} ${reponse} ${reponse}    
 
    Log To Console    ${reponse.status_code}     
    Log To Console    ${reponse.content}     


TC_GetReq3
    Create Session    Get_studID    ${Base_URL} 
    ${rep}=    Get On Session    Get_studID    api/studentsDetails/108758
    ${rep2}    Convert To String    ${rep.status_code}
    Should Be Equal    ${rep2}    200    
    Log To Console    ${rep.status_code}     
    Log To Console    ${rep.content}     


    


