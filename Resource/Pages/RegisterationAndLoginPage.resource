*** Settings ***
Documentation    Define keywords for registration process
Resource    ../Base/CommonFunctionality.resource
*** Variables ***
${SIGN IN LOCATOR}    xpath=//a[contains(text(),'Sign in')]
${EMAIL LOACTOR}    id=email_create
${CREATE ACCOUNT LOCATOR}    id=SubmitCreate
${GENDER LOCATOR}    id=id_gender
${FIRST NAME LOCATOR}    id=customer_firstname
${LAST NAME LOCATOR}    id=customer_lastname
${PASSWORD LOCATOR}    id=passwd
${ADDRESS LOCATOR}    id=address1
${CITY LOCATOR}    id=city
${STATE LOCATOR}    id=id_state
${POSTAL LOCATOR}    id=postcode
${COUNTRY LOCATOR}    id=id_country
${PHONE NUMBER LOCATOR}    id=phone_mobile
${ADDRESS ALIAS LOCATOR}    id=alias
${REGISTER LOCATOR}    XPATH=//span[contains(text(),'Register')]
${SIGN IN EMAIL LOCATOR}    id=email
${SUBMIT LOGIN LOCATOR}    id=SubmitLogin

*** Keywords ***
Click Sign in
    Click Element    ${SIGN IN LOCATOR}  
    
Enter Email to create account
    [Documentation]    Same email cannot be used for registering again.
    [Arguments]    ${email}
    Input Text    ${EMAIL LOACTOR}    ${email}
    
Click Create Account
    Click Element    ${CREATE ACCOUNT LOCATOR}    
    
Select Gender
    [Documentation]    Enter 1 to select Mr. and enter 2 to select Mrs.
    [Arguments]    ${gender} 
    Click Element    ${GENDER LOCATOR}${gender} 
    
Enter First Name
    [Arguments]    ${first name}
    Input Text    ${FIRST NAME LOCATOR}    ${first name}
    
Enter Last Name 
    [Arguments]    ${last name}
    Input Text    ${LAST NAME LOCATOR}    ${last name} 
    
Enter Password 
    [Documentation]    Password should be minimum 5 characters long.
    [Arguments]    ${password}
    Input Text    ${PASSWORD LOCATOR}    ${password}
    
Enter Address 
    [Arguments]    ${address}
    Input Text    ${ADDRESS LOCATOR}    ${address}
    
Enter City
    [Arguments]    ${city}
    Input Text    ${CITY LOCATOR}    ${city}
    
Select State 
    [Arguments]    ${state}
    Select From List By Label    ${STATE LOCATOR}    ${state}
    
Enter Postal 
    [Arguments]    ${postal code}
    Input Text    ${POSTAL LOCATOR}    ${postal code}
    
Select Country
    [Arguments]    ${country}
    Select From List By Label    ${COUNTRY LOCATOR}    ${country}
    
Enter Phone Number 
    [Arguments]    ${phone number}
    Input Text    ${PHONE NUMBER LOCATOR}    ${phone number}  
    
Enter Address Alias 
    [Arguments]    ${address alias}
    Input Text    ${ADDRESS ALIAS LOCATOR}    ${address alias}
    
Click Register   
    Click Element    ${REGISTER LOCATOR}   
    
Validate Successful Registration/Login
    Page Should Contain    Order history and details   
    
Enter Email to Sign in
    [Arguments]    ${email}
    Input Text    ${SIGN IN EMAIL LOCATOR}    ${email}  
    
Enter Password to Sign in
    [Arguments]    ${password}
    Input Password    ${PASSWORD LOCATOR}    ${password}
    
Click Submit Login
    Click Element    ${SUBMIT LOGIN LOCATOR}    
              
    
     