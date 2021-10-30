*** Settings ***
Resource    ../Base/CommonFunctionality.resource
*** Variables ***
${MENUITEM WOMEN LOCATOR}    xpath=//a[text()='Women']
${SUB MENUITEM T-SHIRT LOCATOR}    xpath=(//a[text()='T-shirts'])[1]
${DRESS IMG LOCATOR}    xpath=//img[@title='Faded Short Sleeve T-shirts']
${MORE LOCATOR}    xpath=//span[text()='More']
${QUANTITY LOCATOR}    id=quantity_wanted
${SIZE LOCATOR}    id=group_1
${COLOR LOCATOR}    id=color
${ADD TO CART LOCATOR}    id=add_to_cart    #xpath=//span[text()='Add to cart']
${CONTINUE SHOPPING LOCATOR}    xpath=//span[@title='Continue shopping']
*** Keywords ***
Hover Over Menuitem Women
    Mouse Over    ${MENUITEM WOMEN LOCATOR}
    
Click Sub Menuitem T-Shirt
    Click Element    ${SUB MENUITEM T-SHIRT LOCATOR}  
    
Hover Over Dress 
    Mouse Over    ${DRESS IMG LOCATOR}  
    
Click More
    [Documentation]    Use this option to customize the purchase like quantity.
    Click Element    ${MORE LOCATOR}    
    
Enter Quantity
    [Arguments]    ${quantity}
    
    Input Text    ${QUANTITY LOCATOR}    ${quantity}    
  
Select Size of Dress
    [Documentation]    Enter size value S for small, M for medium and L for large.
    [Arguments]    ${size}
    # Wait Until Element Is Visible    ${SIZE LOCATOR}    timeout=50s    
    Select From List By Value    ${SIZE LOCATOR}    ${size}   
    
Choose Color
    [Documentation]    Enter 13 for orange dress and 14 for blue dress.    
    [Arguments]    ${color}
    Click Element    ${COLOR LOCATOR}_${color}  
    
Click Add to Cart
    Click Element    ${ADD TO CART LOCATOR}    
    
Validate Item added to cart Successful 
    Page Should Contain    Product successfully added to your shopping    
    
Click Continue Shopping
    Click Element    ${CONTINUE SHOPPING LOCATOR}    