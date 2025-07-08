*** Keywords ***
Post Request Api
    [Arguments]    ${base_url}    ${uri}       ${headers}=${EMPTY}       ${json}=${EMPTY}
    Log To Console  ${json}
    RequestsLibrary.Create Session    Inquiry    ${base_url}
    ${resp}   POST On Session   Inquiry     ${uri}     json=${json}     headers=${headers}
    [Return]        ${resp}

Delete Request Api
    [Arguments]    ${base_url}    ${uri}       ${headers}=${EMPTY}       ${json}=${EMPTY}
    Log To Console  ${json}
    RequestsLibrary.Create Session    Delete    ${base_url}
    ${resp}   DELETE On Session   Delete     ${uri}     json=${json}     headers=${headers}
    [Return]        ${resp}

Get Request Api
    [Arguments]    ${base_url}    ${uri}       ${headers}=${EMPTY}       ${params}=${EMPTY}
    RequestsLibrary.Create Session    Get    ${base_url}
    ${resp}   RequestsLibrary.GET On Session   Get     ${uri}     headers=${headers}        params=${params}
    [Return]        ${resp}