*** Settings ***
Documentation   Keywords for product details page
Resource    ../GenericLibrary/GlobalSettings.robot

*** Keywords ***

Verifies cart button in pdp
    [Documentation]    Main Keyword - To search and add an item to cart
    Wait Until Element Is Visible   ${Searchbar}
    Click Element    ${Searchbar}
    Click Element   ${SearchField}
    Input Text    ${SearchField}    iPhone 6s Plus
    #Click Element At Coordinates    976    2036
    Press Keycode    66
    Wait Until Element Is Visible    ${iPhone}  2s
    Log To Console      || --------------- ||  The item is visible
    Click Element    ${iPhone}
    Log To Console      || --------------- ||  Product details is visible
    Swipe    492    1860   572   668
    Wait Until Element Is Visible    ${Cartbutton}       2s
    Click Element   ${Cartbutton}
    Log To Console       || --------------- ||  The item is added to cart

Verify cart page
    [Documentation]    Main Keyword - To verify the cart page
    Click Element    ${Carticon}
    Wait Until Page Contains Element    ${Product title}
    Page Should Contain Element    ${Product title}
    Capture Page Screenshot
    Log To Console       || The cart contains the item ||
    Page Should Contain Element    ${Product price}
    Log To Console       || The cart has value ||
    ${Cart value}  Get Text    ${Total value}
    ${Cart amt}    Get Text   ${Total amt}
    ${Cartdetails}  Set Variable   The  ${Cart value} is : ${Cart amt}
    Log To Console    || ${Cartdetails} ||
    Page Should Contain Element   ${Checkout}
    Click Element    ${Checkout}
    Log To Console       || user is navigated to checkout page ||