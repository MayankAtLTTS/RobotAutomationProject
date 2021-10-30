*** Settings ***
Resource    ../Base/CommonFunctionality.resource
*** Variables ***
${MENUITEM DRESSES LOCATOR}    xpath=(//a[@title='Dresses'])[2]
${SUB MENUITEM CASUAL DRESSES LOCATOR}    xpath=(//a[@title='Casual Dresses'])[2]
${DRESS IMAGE LOCATOR}    xpath=//img[@title='Printed Dress']
${LIST LOCATOR}    id=list
${MORE LOCATOR}    xpath=//span[text()='More']
${WRITE REVIEW LOCATOR}    xpath=//a[@class='open-comment-form']
${REVIEW TITLE LOCATOR}    id=comment_title
${REVIEW COMMENT LOCATOR}    id=content
${SUBMIT COMMENT LOCATOR}    id=submitNewMessage
${OK BUTTON LOCATOR}    xpath=//span[text()='OK']
*** Keywords ***
Hover Over Menuitem Dresses
    Mouse Over    ${MENUITEM DRESSES LOCATOR}
    
Click Sub Menuitem Casual Dresses
    Click Element    ${SUB MENUITEM CASUAL DRESSES LOCATOR}
    
Hover Over Dress Image
    Mouse Over    ${DRESS IMAGE LOCATOR}
    
Click List View
    Click Element    ${LIST LOCATOR}    
    
Click More
    Click Element    ${MORE LOCATOR}    
    
Click Write Review
    Click Element    ${WRITE REVIEW LOCATOR}    
    
Enter Title of Review
    [Arguments]    ${title}
    Input Text    ${REVIEW TITLE LOCATOR}    ${title}
    
Enter Comment of Review
    [Arguments]    ${comment}
    Input Text    ${REVIEW COMMENT LOCATOR}    ${comment}    
    
Click Send
    [Documentation]    Send/submit comment.
    Click Element    ${SUBMIT COMMENT LOCATOR}    
    
Validate New Comment Sent
    Page Should Contain    New comment    
    
Click Ok Button
    Click Element    ${OK BUTTON LOCATOR}                 