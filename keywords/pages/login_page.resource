*** Keywords ***
Verify Display Login
    SeleniumLibrary.Wait Until Element Is Visible     ${LOGIN.LOGIN_PAGE.TITLE}    ${TIME_DELAY_M}

Input Username
    [Arguments]     ${username}
    SeleniumLibrary.Wait Until Element Is Visible     ${LOGIN.USERNAME.TEXTBOX}      ${TIME_DELAY_M}
    SeleniumLibrary.Input Text     ${LOGIN.USERNAME.TEXTBOX}     ${username}

Input Password
    [Arguments]     ${password}
    SeleniumLibrary.Input Text          ${LOGIN.PASSWORD.TEXTBOX}        ${password}

Click Login Button
    SeleniumLibrary.Click Element          ${LOGIN.LOGIN.BUTTON}
