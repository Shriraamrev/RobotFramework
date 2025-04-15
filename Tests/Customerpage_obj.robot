*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#${CUSTOMER_URL}    https://your-customer-creation-url.com

*** Keywords ***

Open Customer Page
    #Open Browser    ${CUSTOMER_URL}    Chrome
    Set Selenium Speed    0.8s

Add New Customer
    Set Selenium Speed    0.8s
    [Arguments]    ${email}    ${firstname}    ${lastname}    ${city}    ${state}    ${gender}
    Click Link    id=new-customer
    Input Text    id=EmailAddress    ${email}
    Input Text    id=FirstName    ${firstname}
    Input Text    id=LastName    ${lastname}
    Input Text    id=City    ${city}
    Select From List By Value    id=StateOrRegion    ${state}
    Select Radio Button    gender    ${gender}
    Click Button    Submit
    Sleep    20s
