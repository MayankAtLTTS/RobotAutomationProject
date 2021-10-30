*** Settings ***
Resource    ../Base/CommonFunctionality.resource
*** Variables ***
${HOME SCREEN LOCATOR}    xpath=//img[@alt='My Store']
${FIRST DRESS LOCATOR}    xpath=(//img[@class='replace-2x img-responsive'])[1]
${ADD DRESS TO CART LOCATOR}    xpath=//a[@title='Add to cart']
${CLOSE LOCATOR}    css=.cross
${CART LOCATOR}    xpath=//a[@title='View my shopping cart']
${CART TEXT LOCATOR}    id=summary_products_quantity
${PROCEED TO CHECKOUT LOCATOR}    xpath=(//*[contains(text(),'Proceed to checkout')])[2]
${COMMENT LOCATOR}    name=message
${TERM AND SERVICE LOCATOR}    id=cgv
${BANKWIRE LOCATOR}    css=.bankwire
${CHEQUE LOCATOR}    css=.cheque
${CONFIRM ORDER LOCATOR}    xpath=//*[text()='I confirm my order']
${CHEQUE DETAIL LOCATOR}    css=.box
*** Keywords ***
Click My Store
    Click Element    ${HOME SCREEN LOCATOR}    
    
Hover Over First Dress
    Mouse Over    ${FIRST DRESS LOCATOR}
    
Click Add to Cart
    Click Element    ${ADD DRESS TO CART LOCATOR} 
    
Close Pop-up
    Click Element    ${CLOSE LOCATOR}       
    
Click Cart
    Click Element    ${CART LOCATOR}
    
Check that Cart is Not Empty 
    Element Text Should Be    ${CART TEXT LOCATOR}    1 Product       
    
Click Proceed to Checkout
    Click Element    ${PROCEED TO CHECKOUT LOCATOR}    
        
Enter Comment
    [Arguments]    ${comment}
    Input Text    ${COMMENT LOCATOR}    ${comment}
    
Click Terms and Services Checkbox
    Click Element    ${TERM AND SERVICE LOCATOR}    
    
Click Pay by bank wire
    Click Element    ${BANKWIRE LOCATOR}    
    
Click Pay by check
    Click Element    ${CHEQUE LOCATOR}    
    
Click Confirm Order
    Click Element    ${CONFIRM ORDER LOCATOR}    
    
Validate Successful Purchase
    Page Should Contain    Your order on My Store is complete.  
    
Display Cheque Details
    [Documentation]    Details to be included in cheque.
    ${details}    Get Text    ${CHEQUE DETAIL LOCATOR}
    Log To Console    ${details}      
         