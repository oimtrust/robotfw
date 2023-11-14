*** Settings ***
Library     SeleniumLibrary
Variables   ../WebElements.py

*** Variables ***
${search_text}      mobile
@{list_search_text}     robot   gifts   books   travel
&{dictionary_search_text}   ro=robot    gi=gifts    boo=books   tra=travel

*** Keywords ***
Input Search Text and Click Search
    [Arguments]  ${arg_search_text}
#    Input Text    id:gh-ac      ${list_search_text}[1]
#    Input Text    id:gh-ac      ${dictionary_search_text.boo}
    Input Text     ${homepage_search_input}    ${arg_search_text}
    Press Keys    ${homepage_search_button}       RETURN

Click on Advanced Search Link
    Click Element    ${homepage_advanced_search_link}