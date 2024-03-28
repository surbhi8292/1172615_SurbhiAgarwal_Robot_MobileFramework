*** Settings ***
Resource    ../GenericLibrary/GlobalSettings.robot

*** Keywords ***



Click Mobile Element
    [Arguments]    ${elementName}   ${mobileObj}
    Set Library Search Order    AppiumLibrary
    Click Element    ${mobileObj}