*** Variables ***
*** Variables ***
${SERVER}         opensource-demo.orangehrmlive.com
${BROWSER}        Chrome
${DELAY}          1
${VALID USER}     demo
${VALID PASSWORD}    mode
${CREATE ACCOUNT URL}      http://${SERVER}/
${LOGIN URL}    http://${SERVER}
${USER MANAGEMENT}  http://${SERVER}//index.php/admin/viewSystemUsers
${REGISTER URL}  http://${SERVER}/register
${ERROR URL}      http://${SERVER}/error.html



#pybot -t Add an exisitng user Test_Admin_Page.robot
