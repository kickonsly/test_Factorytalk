*** Keywords ***
Full Step Login
    [Arguments]     ${username}     ${password}
    login_page.Verify Display Login
    login_page.Input Username       username=${username}
    login_page.Input Password       password=${password}
    login_page.Click Login Button   