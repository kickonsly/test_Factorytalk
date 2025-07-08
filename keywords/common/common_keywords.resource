*** Keywords ***
Check Text Is Equal
    [Arguments]    ${actual}      ${expect}
    run keyword if    '${actual}'=='${expect}'      log    Pass : Actual == Expect
    ...     ELSE    fail    Fail : Actual != Expect ( ${actual} != ${expect})

Compare Data Response Body
    [Arguments]     ${reponse_actual}      ${reponse_expect}
    ${result} =      Validate Response Body      ${reponse_actual}     ${reponse_expect}