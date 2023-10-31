*** Settings ***
Documentation       Basic Search Functionality
Resource            ../../Resources/Common.robot
Resource            ../../Resources/eBayResource.robot

*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]     This test case verifies the basic search
    [Tags]              Functional

    Start TestCase
    Verify Search Results
    Finish TestCase