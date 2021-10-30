*** Settings ***
Resource    ../Resource/Base/CommonFunctionality.resource
Resource    ../Resource/Pages/RegisterationAndLoginPage.resource

Test Setup    Launch Browser
Test Teardown    End Browser
*** Test Cases ***
TC1_Registration
    Click Sign in
    Enter Email to create account    John123@mayank.com
    Click Create Account
    
    Select Gender    1
    Enter First Name    Mayank
    Enter Last Name    Upadhyay
    Enter Password    abc@123
    Enter Address    common street 12
    Enter City    random city
    Select State    New York
    Enter Postal    10001
    Select Country    United States
    Enter Phone Number    1234567890
    Enter Address Alias    street10
    Click Register
    
    Validate Successful Registration/Login