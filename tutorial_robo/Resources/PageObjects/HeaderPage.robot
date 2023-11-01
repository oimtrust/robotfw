*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${search_text}      mobile
@{list_search_text}     robot   gifts   books   travel

*** Keywords ***
Input Search Text and Click Search
    Input Text    id:gh-ac      ${list_search_text}[1]
    Press Keys    //*[@id="gh-btn"]       RETURN

Click on Advanced Search Link
    Click Element    id:gh-as-a