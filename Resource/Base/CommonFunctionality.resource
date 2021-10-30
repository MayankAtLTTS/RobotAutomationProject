*** Settings ***
Documentation    This resouce defines reusable methods.
Library    OperatingSystem  
Library    SeleniumLibrary      
*** Variables ***
${BROWSER}    chrome
${URL}    http://automationpractice.com/index.php
*** Keywords ***
Launch Browser
    Append To Environment Variable    Path    ${EXECDIR}${/}driver
    Open Browser    browser=${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    50s
    Set Screenshot Directory    ${EXECDIR}${/}Screenshots
    Go To    url=${URL}
    
End Browser
    Close Browser