*** Settings ***
Library         SeleniumLibrary
Resource

*** Variables ***

*** Test Cases ***
This is sample test cases
    [Documentation]     Google test
    [Tags]              regression

    Open Browser    https://www.google.com  chrome
    Close Browser
*** Keywords ***