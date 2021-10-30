*** Settings ***
Resource    ../Resource/Pages/AutomateLogin.resource
Resource    ../Resource/Pages/DressesSuite.resource

Test Setup    Launch Browser
Test Teardown    End Browser

Test Template    Writing_Casual_Dresses_Review_Template
Library    DataDriver    file=../TestData/Dresses_Review.xlsx    sheet_name=Dresses_Review

*** Test Cases ***
TC_${Sr No}_Dress Review     
       
*** Keywords ***
Writing_Casual_Dresses_Review_Template
    [Arguments]    ${title}    ${comment}
    Automate Login
    Hover Over Menuitem Dresses
    Click Sub Menuitem Casual Dresses
    Click List View
    Click More
    Click Write Review
    Enter Title of Review    ${title}
    Enter Comment of Review    ${comment}
    Click Send
    Validate New Comment Sent
    Click Ok Button