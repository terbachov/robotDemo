*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***

testLogin1
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    LoginKW
    Click Element    id=welcome    
    sleep    1s
    Click Element    link=Logout 
    Log    Test Completed       
    Close Browser
    Log To Console    this test was run by %{username} on %{os}  
testLogin01
#    sleep    10s
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

    sleep    10s

    Open Browser    ${url}    chrome
    Input Text    id=txtUsername    ${user}
    sleep    3s
    Input Password    id=txtPassword    ${password}  
    sleep    3s
    Click Button    id=btnLogin
    sleep    3s
    Click Element    id=welcome    
    sleep    3s
    Click Element    link=Logout 
    Log    Test Completed       
    Close Browser

    Open Browser    @{users}[0]    chrome
    Input Text    id=txtUsername    @{users}[1]
    sleep    3s
    Input Password    id=txtPassword    @{users}[2]  
    sleep    3s
    Click Button    id=btnLogin
    sleep    3s
    Click Element    id=welcome    
    sleep    3s
    Click Element    link=Logout 
    Log    Test Completed       
    Close Browser

    Open Browser    @{users}[0]    chrome
    Input Text    id=txtUsername    @{users}[1]
    sleep    3s
    Input Password    id=txtPassword    @{users}[2]  
    sleep    3s
    Click Button    id=btnLogin
    sleep    3s
    Click Element    id=welcome    
    sleep    3s
    Click Element    link=Logout 
    Log    Test Completed       
    Close Browser

    Open Browser    &{logindata}[url]    chrome
    Input Text    id=txtUsername    &{logindata}[username]
    sleep    3s
    Input Password    id=txtPassword    &{logindata}[pass]  
    sleep    3s
    Click Button    id=btnLogin
    sleep    3s
    Click Element    id=welcome    
    sleep    3s
    Click Element    link=Logout 
    Log    Test Completed       
    Close Browser

TestLink
    Open Browser    https://verified.capitalone.com/auth/signin#/esignin?Product=Card    chrome
    sleep    3s
#    Maximize Browser Window
#    sleep    3s
    Click Link    link:Commercial or Trade Credit 
    sleep    3s
    Go Back    
    sleep    3s
    Click Link    Partial link:Terms & Co              

TestLink2
    Open Browser    https://www.lambdatest.com/    chrome
    sleep    3s
    Maximize Browser Window
    sleep    3s
    Click Link    link:Pricing 
    sleep    3s
    Go Back    
    sleep    3s
    Click Link    link:Automation              
    Go Back    
    sleep    3s

    Click Link    Partial link:Liv              
    Go Back    
    sleep    3s


TestLink3 not work
    Open Browser    https://ngendigital.com/practice    chrome
    sleep    2s
    Maximize Browser Window
    sleep    2s
#   Select Frame    xpath=//*[@id="iframe-010"] 
#    sleep    2s
    Input Text    xpath=/html/body/fieldset[6]/form/input[1]    NgenDigital    
    sleep    2s




*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/
${user}    Admin
${password}    admin123

@{users}    https://opensource-demo.orangehrmlive.com/    Admin    admin123
&{logindata}    url=https://opensource-demo.orangehrmlive.com/    username=Admin    pass=admin123

*** Keywords ***

LoginKW
    Input Text    id=txtUsername    Admin
    sleep    1s
    Input Password    id=txtPassword    admin123  
    sleep    1s
    Click Button    id=btnLogin
    sleep    1s
    

