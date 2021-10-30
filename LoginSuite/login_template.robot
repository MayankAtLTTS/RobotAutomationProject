*** Settings ***
Resource    ../Resource/Pages/AutomateLogin.resource
Test Setup    Launch Browser
Test Teardown    End Browser
Test Template    Login_Template
*** Test Cases ***
TC1_Login    ${REGISTERED EMAIL ADDRESS}    ${REGISTERED PASSWORD}
    

*** Keywords ***
Login_Template
    [Arguments]    ${email}    ${password}
    Click Sign in
    Enter Email to Sign in    ${email}
    Enter Password to Sign in    ${password}
    Click Submit Login
    Validate Successful Registration/Login