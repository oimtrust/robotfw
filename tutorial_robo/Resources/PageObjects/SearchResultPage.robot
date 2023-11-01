*** Settings ***
Library     SeleniumLibrary
Resource    ./HeaderPage.robot

*** Variables ***
${search_result}        results for

*** Keywords ***
Verify Search Result
    Page Should Contain    ${search_result} ${dictionary_search_text.boo}
    
Verify Advanced Search Page
    Page Should Contain    Advanced Search