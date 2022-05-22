*** Settings ***
Documentation
...                 My first test
...                 This test will verify google

Library             SeleniumLibrary
Library             ./lib/CustomLib.py


*** Test Cases ***
Open Store & Login Store With Wrong Credentials
    Navigate To Store
    Verify Page Contains Store
    Signin With Dummy Email


*** Keywords ***
Navigate To Store
    Open Browser
    ...    http://automationpractice.com/
    ...    browser=chrome    options=add_experimental_option('excludeSwitches', ['enable-logging'])

Verify Page Contains Store
    ${Get_Title}=    Get Title
    Should Be Equal As Strings    ${Get_Title}    My Store

Signin With Dummy Email
    Click Element    css=.login
    Wait Until Page Contains Element    email    20s
    ${random_email}=    Generate Random Email    ${8}
    Input Text    email    ${random_email}
    Input Text    passwd    password123
    Click Element    SubmitLogin
    Wait Until Page Contains    Authentication failed.
