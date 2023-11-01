*** Settings ***
Documentation       Basic Search Functionality
Resource            ../../Resources/Common.robot
Resource            ../../Resources/PageObjects/HeaderPage.robot
Resource            ../../Resources/PageObjects/SearchResultPage.robot

Test Setup  Common.Start TestCase
Test Teardown   Common.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]     This test case verifies the basic search
    [Tags]              Functional

    HeaderPage.Input Search Text and Click Search   robot
    SearchResultPage.Verify Search Result   robot

Verify basic search functionality for eBay 1
    [Documentation]     This test case verifies the basic search
    [Tags]              Functional

    HeaderPage.Input Search Text and Click Search   books
    SearchResultPage.Verify Search Result   books

Verify advanced search functionality
    [Documentation]     This test case verifies the advanced search page
    [Tags]              Functional
    HeaderPage.Click on Advanced Search Link
    SearchResultPage.Verify Advanced Search Page