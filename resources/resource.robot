*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library
Resource          variables.robot




*** Keywords ***
#Login Page
Enter Username
    [Arguments]  ${username}
    Input Text  txtUsername  ${username}

Enter Password
    [Arguments]  ${password}
    Input Text  txtPassword  ${password}

Click Login
    Click Element  btnLogin
    #Click Element  css:input#btnLogin.button


Click Logout
    Click Element  welcome
    Wait Until Element Is Visible   //a[@href="/index.php/auth/logout"]
    Click Element  //a[@href="/index.php/auth/logout"]

Open Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Set Selenium Speed    ${DELAY}


# User Management
Open User Management Page
    Open Browser    ${USER MANAGEMENT}    ${BROWSER}
    Set Selenium Speed    ${DELAY}
    Enter Username  Admin
    Enter Password  admin123
    Click Login



Add User
    Click Element  btnAdd


Select User Role
    #1 = Admin  2=ESS
    [Arguments]  ${userType}
    Select From List by Value  systemUser_userType  ${userType}

Enter Employee Name
    [Arguments]  ${employeeName}
    Input Text  systemUser_employeeName_empName  ${employeeName}

Enter Desired Username
    [Arguments]  ${desiredUserName}
    Input Text  systemUser_userName  ${desiredUserName}

Select Status
    # 1 = enabled   2= disabled
    [Arguments]  ${userStatus}
    Select From List by Value  systemUser_status  ${userStatus}


Enter Desired Password
    [Arguments]  ${desiredPassword}  ${confirmedPassword}
    Input Text  systemUser_password  ${desiredPassword}
    Input Text  systemUser_confirmPassword  ${confirmedPassword}

Click Save
    Click Element  btnSave

Click Cancel
    Click Element  btnCancel


Delete User
    Click Element  btnDelete

Search
    Click Element  searchBtn

Reset
    Click Element  resetBtn








