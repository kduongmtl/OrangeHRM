*** Settings ***
Library  Dialogs
Library  BuiltIn
Resource    ../resources/resource.robot
Suite Setup  Open login Page
Suite Teardown    Close Browser
Test Template  Enter Email And Password

**** Test Cases ***
Case1   Admin  admin123


**** Keywords ***
Enter Email And Password
    [Arguments]  ${username}  ${password}
    Enter Username  ${username}
    Enter Password  ${password}
    Click Login
    Page Should Contain Image  //img[@src="/webres_5acde3dbd3adc6.90334155/themes/default/images/logo.png"]
    Page Should Contain Element  //a[@id="welcome"]
    Page Should Contain  Dashboard
    Click Logout































