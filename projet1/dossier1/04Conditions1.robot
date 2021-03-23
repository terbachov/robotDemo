*** Settings ***
Resource    01UserFunction.robot

*** Test Cases ***
TC001
    # Set Variable If condition True
    ${cond}=    Set Variable    True
    ${a}=    Set Variable    20
    Log    ${a}
    ${a}=    Set Variable If    ${cond}==True    10    20
    Log    ${a}
    #                            condition        If    Else
    ${b}=    Set Variable If    ${cond}==False    100    200
    Log    ${b}
    
TC002
    #    Run Keyword if (run function if)
    ${cond}=    Set Variable    False
    Run Keyword If    ${cond}==True    localFunction1    ELSE    ExternalFunction    

TC003
    #  run sauf si condition true
    FOR    ${i}    IN RANGE     1    11
        Log    ${i}
        Run Keyword Unless    ${i}>6    localFunction2    
    END

TC004
    #  continue l'execution de la boucle si condition 
    FOR    ${i}    IN RANGE     1    11
        Log    Start - ${i}
        Continue For Loop If    ${i}>5
        Log    End - ${i}
        localFunction2
        END

TC005
    #  Exit for loop si condition 
    FOR    ${i}    IN RANGE     1    11
        Log    Start - ${i}
        Exit For Loop If    ${i}>5
        Log    End - ${i}
        localFunction2
        END

TC006
    # marquer le test pass sans alller plus bas
    ${a}=    Set Variable    10
    Pass Execution If    ${a}>3    Pass force a cause de la condition 5>3    
    Fail    Echec force
 
TC007
      ${b}=    returnMessage


*** Keywords ***

localFunction1   
    Log    This is local function 1
    
localFunction2   
    Log    This is local function 2

returnMessage
    ${a}=    Set Variable    3
    Return From Keyword If    ${a}>5    Hello, its returned message True
    Return From Keyword If    ${a}<5    Hi, its returned message False
