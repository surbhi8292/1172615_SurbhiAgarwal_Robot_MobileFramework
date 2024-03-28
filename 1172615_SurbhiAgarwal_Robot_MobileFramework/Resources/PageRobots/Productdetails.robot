*** Settings ***
Documentation   Keywords for product details page
Resource    ../GenericLibrary/GlobalSettings.robot

*** Keywords ***

User navigates to PDP
    [Documentation]    Main Keyword - To search an item and navigate to product detail page
    Wait Until Page Contains Element     ${Searchbar}     5s
    Click Element    ${Searchbar}
    Click Element   ${SearchField}
    Input Text    ${SearchField}    iPhone 6s Plus
    #Click Element At Coordinates    976    2036
    Press Keycode    66
    Wait Until Element Is Visible    ${iPhone}  2s
    Log To Console      || The item is visible ||
    Click Element    ${iPhone}
    Log To Console      || Product details is visible ||

User navigates to review and rating section
    [Documentation]    Main Keyword - To write and post a review
    Wait Until Element Is Visible    ${Write review}
    Click Element    ${Write review}
    Click Element    ${Review}
    Input Text     ${Review}   Good product for shopping and they’re available in an elegant new rose gold ﬁnish
    Hide Keyboard
    Click Element    ${Rating}
    Click Element    ${Post}
    Capture Page Screenshot
    Log To Console      || The review is posted ||
    Swipe    492    1860   572   668

Verify Quantity, Specification, Description
    [Documentation]    Main Keyword - To verify the item details page
    Page Should Contain Element    ${Quantity}
    Log To Console    || Quantity field is present ||
    Page Should Contain Element    ${QuantityNo}
    ${No of items}    Get Text      ${QuantityNo}
    Log To Console    || ${No of items} ||
    Page Should Contain Element    ${SpecificationLink}
    Log To Console    || Speciations field is present ||
    Click Element       ${SpecificationLink}
    Wait Until Element Is Visible       ${SpecHeading}    2s
     ${sphd}     Get Text       ${SpecHeading}
     Log To Console      || ${sphd} ||
     ${Manufacturetitle}     Get Text       ${SpecManufactureTitle}
     ${ManufactureValue}     Get Text       ${SpecManufactureValue}
     ${Stocktitle}     Get Text       ${SpecStocktitle}
     ${Stockvalue}     Get Text       ${SpecStockValue}
     ${Manufacturedetails}    Set Variable   The ${Manufacturetitle} is : ${ManufactureValue}
     Log To Console      || ${Manufacturedetails} ||
     ${Stockdetails}    Set Variable   The ${Stocktitle} is : ${Stockvalue}
     Log To Console      || ${Stockdetails} ||
     Click Element    ${navigateback}
    Page Should Contain Element    ${DescriptionContent}
    Log To Console    || Product description  is present ||
    Swipe By Percent      50   70   20    50

Add to Wishlist
    [Documentation]    Main Keyword - To add item to wishlist
    Wait Until Element Is Visible   ${AddToWishList}        2s
    Click Element       ${AddToWishList}
    Log To Console       || The item is added to wishlist ||

Verify Wishlist
    [Documentation]    Main Keyword - To verify item from wishlist
    Wait Until Element Is Visible    ${Menu}
    Click Element    ${Menu}
    Wait Until Element Is Visible       ${WishlistDropdown}
    Click Element   ${WishlistDropdown}
    Wait Until Element Is Visible        ${ItemTitle}     2s
    Click Element   ${ItemTitle}

Add to cart
    [Documentation]    Main Keyword - To add an item to cart
     Wait Until Element Is Visible    ${Cartbutton}       2s
     Click Element   ${Cartbutton}
     Log To Console       || The item is added to cart ||






