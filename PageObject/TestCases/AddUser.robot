*** Settings ***
Library    SeleniumLibrary    
Resource    ../Resources/UserKeyword.robot
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
    
${Browser}    chrome
${SiteUrl}    https://opensource-demo.orangehrmlive.com/index.php/auth/login
${user}    Admin
${pwd}    admin123
${SiteUrl2}    https://opensource-demo.orangehrmlive.com/index.php/auth/login


*** Test Cases ***
TC001
    
    Open my Browser    ${SiteUrl}    ${Browser}
    Sleep    1    
    Enter UserName    ${user}
    Sleep    1    
    Enter Password    ${pwd}
    Sleep    1    
    Click SignIn
    Sleep    1    
    
    go to user manager
    Sleep    2
    
    Close my Browser
    
    