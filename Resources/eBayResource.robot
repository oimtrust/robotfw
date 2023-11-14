*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Search product with Mobile as the keyword
    Input Text      id:gh-ac      Mobile
    Press Keys      //*[@id="gh-btn"]       RETURN

Verify Search Results
    Page Should Contain    results for Mobile