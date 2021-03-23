*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***

testLogin1
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    Input Text    id=txtUsername    Admin
    sleep    1s
    Input Password    id=txtPassword    admin123  
    sleep    1s
    Click Button    id=btnLogin
    sleep    1s
    Click Element    id=welcome    
    sleep    1s
    Click Element    link=Logout 
    Log    Test Completed       
    Close Browser
    Log To Console    this test was run by %{username} on %{os}  


testLogin2
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    sleep    5s
    Input Text    id:txtUsername    Admin
    sleep    1s
    Input Password    id:txtPassword    admin123  
    sleep    1s
    Click Button    id:btnLogin
    sleep    1s
    Click Element    xpath://*[@id="dashboard-quick-launch-panel-menu_holder"]/table/tbody/tr/td[1]/div/a/img
    

    Log To Console   Finish