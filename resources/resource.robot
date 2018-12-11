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


Delete User
    Click Element  btnDelete

Search
    Click Element  searchBtn

Reset
    Click Element  resetBtn








