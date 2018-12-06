*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library
Resource          variables.robot




*** Keywords ***
#Login
Enter Email
    [Arguments]  ${email}
    Input Text  username  ${email}

Enter Password
    [Arguments]  ${password}
    Input Text  password  ${password}


Open Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Set Selenium Speed    ${DELAY}














