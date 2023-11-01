*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${search_text}      mobile
@{list_search_text}     robot   gifts   books   travel
&{dictionary_search_text}   ro=robot    gi=gifts    boo=books   tra=travel

*** Keywords ***
Input Search Text and Click Search
#    Input Text    id:gh-ac      ${list_search_text}[1]
    Input Text    id:gh-ac      ${dictionary_search_text.boo}
    Press Keys    //*[@id="gh-btn"]       RETURN

Click on Advanced Search Link
    Click Element    id:gh-as-a