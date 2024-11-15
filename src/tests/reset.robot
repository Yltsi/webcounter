*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When counter has a nonzero value and it is reset the value becomes zero
    ${value}=  Set Variable  5
    ${value}=  Reset Value To Zero  ${value}
    Should Be Equal  ${value}  0