*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_URL}    https://automationplayground.com/crm/

*** Keywords ***

Open Login Page
    Open Browser    ${LOGIN_URL}    Chrome
    Set Selenium Speed    0.8s
    click link    Sign In
    Maximize Browser Window

Input Userid and Password
    [Arguments]    ${userid}    ${password}
    Input Text    id=email-id    ${userid}
    Input Text    id=password    ${password}
    click button  Submit
    sleep  5s

Sign In
    Open Login Page
    Input Userid and Password    admin@robotframeworktutorial.com    qwe
