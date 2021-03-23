*** Test Cases ***
TC001
    Log    1    
    Log    2
    Log    3    
    Log    4
    Log    5    
    Log    6

TC002
#   loop de 1 a 10
    FOR    ${i}    IN RANGE     1    11
        Log    ${i}
    END

TC003
#   loop de dans une liste
    FOR    ${i}    IN     10    20    30    40
        Log    ${i}
    END



TC004
#   loop de dans une liste
    @{a}=    Create List    1    2    3    4    5    6    7    8    
    FOR    ${i}    IN    @{a}
        Log    ${i}
    END

TC005
#   Exit Loop
    @{a}=    Create List    1    2    3    4    5    6    7    8    
    FOR    ${i}    IN    @{a}
        Log    ${i}
        Exit For Loop If    ${i}>4
    END


    
TC006
#   2 For
    FOR    ${i}    IN RANGE     1    11
        FunctionFor1    ${i} 
    END

*** Keywords ***

FunctionFor1
    [Arguments]    ${i}
    FOR    ${j}    IN RANGE     1    6
            Log    ${i} And ${j} 
    END        
    