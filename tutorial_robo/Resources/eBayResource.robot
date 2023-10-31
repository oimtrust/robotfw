*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Verify Search Results
    Input Text      id:gh-ac      Mobile
    Press Keys      //*[@id="gh-btn"]       RETURN
    Page Should Contain    results for Mobile