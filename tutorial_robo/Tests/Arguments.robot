*** Settings ***

*** Test Cases ***
Argument demo keyword test 1
    Argument demo keyword    oim    trust

Argument demo keyword test 2
    Argument demo keyword    learn    robot

*** Keywords ***
Argument demo keyword
    [Arguments]     ${arg1}  ${arg2}
    Log    ${arg1}
    Log    ${arg2}