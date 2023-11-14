*** Settings ***
Library     SeleniumLibrary
Resource    ./HeaderPage.robot

*** Variables ***
${search_result}        results for

*** Keywords ***
Verify Search Result
    [Arguments]  ${arg_search_text}
#    Page Should Contain    ${search_result} ${dictionary_search_text.boo}
    Page Should Contain    ${search_result} ${arg_search_text}

Verify Advanced Search Page
    Page Should Contain    Advanced Search