*** Settings ***
Library    SeleniumLibrary    
Resource    ../Resources/LoginKeywords.robot


*** Variables ***
${Browser}    chrome
${SiteUrl}    https://opensource-demo.orangehrmlive.com/index.php/auth/login
${user}    Admin
${pwd}    admin123
${userF}    abcd
${pwdF}    admin123


*** Test Cases ***
LoginTestPass1
    Open my Browser    ${SiteUrl}    ${Browser}
    Sleep    1    
    Enter UserName    ${user}
    Sleep    1    
    Enter Password    ${pwd}
    Sleep    1    
    Click SignIn
    Sleep    1    
    Verify Login Success
    
    Close my Browser


LoginTestPass2
    Log    a new test
    Open my Browser    ${SiteUrl}    ${Browser}
    Sleep    1    
    Enter UserName    ${user}
    Sleep    1    
    Enter Password    ${pwd}
    Sleep    1    
    Click SignIn
    Sleep    1    
    Verify Login Success
    
    Close my Browser
    

   
LoginTestFail
    Open my Browser    ${SiteUrl}    ${Browser}
    Sleep    1    
    Enter UserName    ${userF}
    Sleep    1    
    Enter Password    ${pwdF}
    Sleep    1    
    Click SignIn
    Sleep    1    
    Verify Login Failed
    
    Close my Browser
    