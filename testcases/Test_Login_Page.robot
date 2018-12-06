*** Settings ***
Library  Dialogs
Library  BuiltIn
Resource    ../resources/resource.robot
Suite Setup  Open login Page
#Suite Teardown    Close Browser
Test Template  Enter Email And Password

**** Test Cases ***
Case1   user@phptravels.com  demouser


**** Keywords ***
Enter Email And Password
    [Arguments]  ${email}  ${password}
    Enter Email  ${email}
    Enter Password  ${password}






























