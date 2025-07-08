*** Keywords ***
Create Chrome Webdriver
    [Documentation]  create new chrome driver with options
    [Arguments]    ${url}   ${speed}=0.05       ${headless}=${headless}
    ${system}=    Evaluate    platform.system()    platform
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method  ${chrome_options}  add_experimental_option    useAutomationExtension    ${False}
    IF    "${headless}".upper() == "TRUE"
        Call Method  ${chrome_options}  add_argument  --headless
    END
    Call Method  ${chrome_options}  add_argument  --test-type
    Call Method  ${chrome_options}  add_argument  --lang\=en-us
    Call Method  ${chrome_options}  add_argument  --ignore-certificate-errors
    Call Method  ${chrome_options}  add_argument  --disable-gpu
    Call Method  ${chrome_options}  add_argument  --no-sandbox
    Call Method  ${chrome_options}  add_argument  --window-size\=1600,1200
    Call Method  ${chrome_options}  add_argument  --use-fake-device-for-media-stream
    Call Method  ${chrome_options}  add_argument  --use-fake-ui-for-media-stream
    Run Keyword If    '${system}'=='Linux'    Run Keywords
    ...    Call Method    ${chrome_options}    add_argument    --test-type
    ...    AND    Call Method    ${chrome_options}    add_argument    --ignore-certificate-errors
    ...    AND    Call Method    ${chrome_options}    add_argument    --disable-extensions
    ...    AND    Call Method    ${chrome_options}    add_argument    --headless
    ...    AND    Call Method    ${chrome_options}    add_argument    --disable-gpu
    ...    AND    Call Method    ${chrome_options}    add_argument    --no-sandbox
    ...    AND    Call Method    ${chrome_options}    add_argument    --window-size\=1600,1200
    ...    AND    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
    ${driver_path}=    Run Keyword If    '${system}'=='Linux'    Set Variable    ${CHROME_DRIVER_PATH_LINUX}
    ...    ELSE IF    '${system}'=='Windows'  Set Variable    ${CHROME_DRIVER_PATH_WINS}
    ...    ELSE IF    '${system}'=='Darwin'   Set Variable    ${CHROME_DRIVER_PATH_MAC}
    ...    ELSE     fail    Not support system : ${system}
    ${kwargs}=    BuiltIn.Create Dictionary    executable_path=${driver_path}
    SeleniumLibrary.Create Webdriver    Chrome    ${driver_path}   options=${chrome_options}   
    Run Keyword If    '${system}'=='Windows'  SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Set Selenium Speed	${speed}
    SeleniumLibrary.Go To    ${url}

Teardown Step
    BuiltIn.Run Keyword If Test Failed      SeleniumLibrary.Capture Page Screenshot
    SeleniumLibrary.Close all browsers