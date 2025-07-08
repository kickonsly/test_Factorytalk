*** Keywords ***
Verify Display Dashboard
    SeleniumLibrary.Wait Until Element Is Visible     ${DASHBOARD.DASHBOARD_PAGE.TITLE}    ${TIME_DELAY_M}