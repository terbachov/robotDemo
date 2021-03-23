*** Settings ***
Library    SeleniumLibrary    
*** Test Cases ***
TC001
    #    ouvrir et fermer browser
    Open Browser    https:google.ca    chrome
    Maximize Browser Window
    sleep    5
    Close Browser
TC002
    #    ouvrir agrandir puis fermer browser
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    Maximize Browser Window
    
    sleep    2
    
    #    Using id
    Page Should Contain Element    id:txtUsername    
    Input Text    id:txtUsername    Admin
    Input Password    id:txtPassword    admin123
    sleep    2
    
    #    Using Name
    Click Button    name:Submit   
    sleep    2
    #    Using Name        
    Click Element    identifier=welcome    
    sleep    1s
    Click Element    link=Logout 
    sleep    2
    
    Click Button    identifier:Submit
    Close Browser

TC003

    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    Maximize Browser Window   
    #    Using tag, when unique 
    Page Should Contain Element    tag:body    
    sleep    2
    
    #    Using class
    #    No exemple
    
TC004
    #    using // input  + attribute
    #    can use many attribute if not unique
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    Maximize Browser Window   
    Input Text    id:txtUsername    Admin
    Input Password    xpath://input[@type='password']    admin123
    sleep    2
    
    Click Button    xpath://input[@class='button'][@type='submit']   
    sleep    2
    Close Browser
    
TC005
    
    # Starts-with   //label[@for='radio-0-_u508550059157584898']
    #               //label[starts-with(@for,'radio-0-')]
    #               //input[starts-with(@value,'male')]

    #               //input[ends-with(@value,'ale')]

    #               //input[contains(@value,'ale')]

    #               //label[text()='Gender ']     

    #               //label[contains(text(),'Gend')]
    # ???  //input[@value='Male'] Or  //label[@value='Male'] ??? //*[@value='Male']   
    
    #               //select[@id='input-263590537572862908']/option[4]
    #               //select[@id='input-263590537572862908']/option[1]
    #               //select[@id='input-263590537572862908']/option[last()] le dernier dans une liste
    #               //select[@id='input-263590537572862908']/option[last()-1-3] l'avant avant dernier

    #  parent of element
    #     //select[@id='input-263590537572862908']/option[last()]/parent::select parent of element
    #     //select[@id='input-263590537572862908']/option[last()]/parent::* parent of element
    #     //select[@id='input-263590537572862908']/option[last()]/parent::*/parent::*
# //select[@id='input-263590537572862908']/option[last()]/parent::*/parent::*/parent::*/parent::*/parent::*/parent::*/parent::*/parent::*/parent::*
# //select[@id='input-263590537572862908']/option[last()]/../../../../
    

 # preceding following element same level
   #    //option[@value='18-30 yrs']/preceding-sibling::option 
   #    //option[@value='18-30 yrs']/preceding-sibling::option[1]       first preceding
   #    //option[@value='18-30 yrs']/following-sibling::option   
   #    //option[@value='18-30 yrs']/following-sibling::option[1]       first follow
   
# OR  AND  NOT
    #    //input[@type='radio' or @value='Female']  one or other attribute
    #    //input[@type='radio' and @value='Female']   one and other
    
    #    //input[not(@type='radio')]   not condition
    
# UNION
    #    //input[@type='radio'] | second condition  for union
    
# ARITHMETIC
    #    //div[@value>2000]  greater equal tu value

     
    


       
    Open Browser    http://khanabook.weebly.com/store/c1/Featured_Products.html    chrome
    

