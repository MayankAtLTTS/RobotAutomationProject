*** Settings ***
Resource    ../Resource/Pages/AutomateLogin.resource
Resource    ../Resource/Pages/CheckOutPage.resource

Test Setup    Launch Browser
Test Teardown    End Browser
*** Test Cases ***
TC5_Purchase Product
    Automate Login
    Click My Store
    Set Selenium Speed    1s
    Hover Over First Dress
    Click Add to Cart
    Close Pop-up
    Click Cart
    Check that Cart is Not Empty
    Click Proceed to Checkout
    Enter Comment    demo
    Click Proceed to Checkout
    Click Terms and Services Checkbox
    Click Proceed to Checkout
    Click Pay by bank wire
    Click Confirm Order
    Display Cheque Details
    Validate Successful Purchase