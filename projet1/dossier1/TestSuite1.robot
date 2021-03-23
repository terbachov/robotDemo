*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***

Suitetest1
    Open Browser    https:google.com    chrome
    sleep    5
    Go To    https://opensource-demo.orangehrmlive.com/index.php/auth/login        
    sleep    5
    Go To    https:google.com        
    sleep    5
    
    Set Browser Implicit Wait    5
    Input Text   name=q     sndl stock
    Press Keys    name=q    ENTER
    Sleep    5s    
#    Click Button    name=btnK
    Close Browser 
  