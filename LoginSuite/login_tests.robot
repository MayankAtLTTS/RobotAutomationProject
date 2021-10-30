*** Settings ***
Resource    ../Resource/Pages/AutomateLogin.resource
Test Setup    Launch Browser
Test Teardown    End Browser
*** Test Cases ***
TC1_Login
    Click Sign in
    Enter Email to Sign in    ${REGISTERED EMAIL ADDRESS}
    Enter Password to Sign in    ${REGISTERED PASSWORD}
    Click Submit Login
    Validate Successful Registration/Login
    
TC2_Automated Login
    [Documentation]    All the steps of TC1_Login are contained in Automate Login.
    Automate Login
    