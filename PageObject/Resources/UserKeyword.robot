*** Settings ***
Library    SeleniumLibrary 
Variables    ../PageObjects/Locators.py   

*** Keywords ***

go to user manager
    Click Element    ${txt_admin}    
     Sleep    1    
    Click Element    ${txt_management}
    Sleep    1    
    Click Element    ${txt_user}
    Sleep    1    
    Click Element    ${btn_addUser}
    