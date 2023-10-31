*** Settings ***
Documentation       Basic Search Functionality
Resource            ../../Resources/Common.robot
Resource            ../../Resources/eBayResource.robot

Test Setup  Start TestCase
Test Teardown   Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]     This test case verifies the basic search
    [Tags]              Functional

    Search product with Mobile as the keyword
    Verify Search Results