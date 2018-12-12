*** Settings ***
Library  Dialogs
Library  BuiltIn
Resource    ../resources/resource.robot
Suite Setup  Open User Management Page
#Suite Teardown    Close Browser
#Test Template  Enter Email And Password

**** Test Cases ***
Add a new user
    Add User
    Select User Role  1
    Enter Employee Name  John Smith
    Enter Desired Username  jsmith8
    Select Status  1
    Enter Desired Password  flex&CubeAnaTo5612  flex&CubeAnaTo5612
    Click Save
    Capture Page Screenshot



Add an exisitng user
    Add User
    Select User Role  1
    Enter Employee Name  John Smith
    Enter Desired Username  jsmith
    Page Should Contain  Already exists
    Capture Page Screenshot
























