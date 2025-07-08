*** Variables ***
${LOGIN.LOGIN_PAGE.TITLE}      xpath=//h5[text()="Login"]
${LOGIN.USERNAME.TEXTBOX}      xpath=//input[@name="username"]
${LOGIN.PASSWORD.TEXTBOX}      xpath=//input[@name="password"]
${LOGIN.LOGIN.BUTTON}      xpath=//button[@type="submit" and text()[normalize-space()='Login']]
