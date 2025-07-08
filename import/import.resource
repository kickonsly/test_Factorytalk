*** Settings ***
Library     SeleniumLibrary     run_on_failure=SeleniumLibrary.CapturePageScreenshot
Library     String
Library     Collections
Library     BuiltIn
Library     RequestsLibrary
Resource    import_common_keywords.resource
Resource    import_features_keywords.resource
Resource    import_pages_keywords.resource
Resource    import_pages_locators.resource
Resource    ${CURDIR}${/}..${/}keywords${/}common${/}global_config.resource