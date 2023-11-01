*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${search_text}      mobile
@{list_search_text}     robot   gifts   books   travel
&{dictionary_search_text}   ro=robot    gi=gifts    boo=books   tra=travel

*** Keywords ***
Input Search Text and Click Search
    [Arguments]  ${arg_search_text}
#    Input Text    id:gh-ac      ${list_search_text}[1]
#    Input Text    id:gh-ac      ${dictionary_search_text.boo}
    Input Text    id:gh-ac      ${arg_search_text}
    Press Keys    //*[@id="gh-btn"]       RETURN

Click on Advanced Search Link
    Click Element    id:gh-as-a