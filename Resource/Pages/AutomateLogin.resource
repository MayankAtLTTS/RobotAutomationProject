*** Settings ***
Documentation    Automating the whole login procedure. 
...    This function clicks on sign in and enters email and password 
...    stored in GlobalVariableResource and clicks on login.
...    This function doesnot Launch Browser or Close it.
Resource    ../Base/CommonFunctionality.resource
Resource    ../Base/GlobalVariableResource.resource
Resource    RegisterationAndLoginPage.resource
*** Keywords ***
Automate Login
    [Documentation]    Automates Login procedure.\n
    ...    This keyword uses global variable *\${REGISTERED EMAIL ADDRESS}* and *\${REGISTERED PASSWORD}* 
    ...    from *GlobalVariableResource.resource* file.\n
    ...    *If the current credentials don't work then run registration_tests.robot in LoginSuite folder 
    ...    and update GlobalVariableResource.resource with those credentials.*\n
    ...    This function doesnot Launch Browser or Close it.
    Click Sign in
    Enter Email to Sign in    ${REGISTERED EMAIL ADDRESS}
    Enter Password to Sign in    ${REGISTERED PASSWORD}
    Click Submit Login
    Validate Successful Registration/Login