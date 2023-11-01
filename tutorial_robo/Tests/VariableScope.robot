#Variable Scopes

#Global Scopes
#Global variables are available everywhere in the test data

#Test Suite Scopes
#Variables with the test suites are available anywhere in the test suite
#Where they are defined or imported

#Test case scope
#Variables with the test case scope are visible in a
#test case and in all user keywords the test uses.

#Local scope
#Test cases and user keywords have a local variable scope
#that is not seen by other tests or keywords.

*** Settings ***

*** Variables ***
${VARIABLE_DEMO}    =   This is GLOBAL Variable  #You can comment or uncomment this variable to get different scenarios

*** Test Cases ***
This is demo test 1
    ${variable_demo}    Set Variable        This is TESTCASE Variable
    Log    ${VARIABLE_DEMO}

This is demo test 2
    Log    ${VARIABLE_DEMO}

This is demo test 3
    This is demo keyword

*** Keywords ***
This is demo keyword
    [Arguments]  ${VARIABLE_DEMO}=This is the KEYWORD Variable
    Log    ${VARIABLE_DEMO}