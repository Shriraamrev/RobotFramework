*** Settings ***
Library    SeleniumLibrary
Resource    C:/Users/Revathy Rangaraju/PycharmProjects/ROBOT_POM/Tests/Loginpage_obj.robot
Resource    C:/Users/Revathy Rangaraju/PycharmProjects/ROBOT_POM/Tests/Customerpage_obj.robot


*** Test Cases ***

Should Be Able to Launch
    [Tags]    1006    Smoke    Contacts
    Loginpage_obj.Sign In
    Customerpage_obj.Open Customer Page
    Customerpage_obj.Add New Customer    janedoe@gmail.com    Shri    Raam    Dallas    TX    male

