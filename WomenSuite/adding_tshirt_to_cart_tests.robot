*** Settings ***
Resource    ../Resource/Pages/AutomateLogin.resource
Resource    ../Resource/Pages/WomenPage.resource

Test Setup    Launch Browser
Test Teardown    End Browser
Test Template    Adding T-Shirt into Cart Template
Library    DataDriver    file=../TestData/Adding T-Shirt into Cart.xlsx    sheet_name=Adding T-Shirt into Cart

*** Test Cases ***
TC_${Sr No}_Add_tshirt_into_cart
*** Keywords ***
Adding T-Shirt into Cart Template
    [Arguments]    ${quantity}    ${size}    ${color}
    Automate Login
    
    Hover Over Menuitem Women
    Click Sub Menuitem T-Shirt
    
    Hover Over Dress
    Click More
    
    Enter Quantity    ${quantity}
    Select Size of Dress    ${size}
    Choose Color    ${color}
    Click Add to Cart
    Validate Item added to cart Successful
    Click Continue Shopping