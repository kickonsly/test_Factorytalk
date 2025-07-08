*** Settings ***
Resource        ${CURDIR}${/}..${/}..${/}import${/}import.resource
Variables       ${CURDIR}${/}..${/}..${/}test_data${/}common${/}setting.yaml
Variables       ${CURDIR}${/}..${/}..${/}test_data${/}test_data.yaml
Force Tags      all    leave
Test Teardown   selenium_keywords.Teardown Step

*** Test Cases ***
TC_001 : Create leave success
    [Documentation]  Create leave success
    [Tags]       testcase_success       answer_tc_001        
    selenium_keywords.Create Chrome Webdriver         url=${URL}
    login_feature.Full Step Login     username=${tc_001}[username]        password=${tc_001}[password]
    dashboard_page.Verify Display Dashboard
    navigator_menu_left_page.Click Leave Menu