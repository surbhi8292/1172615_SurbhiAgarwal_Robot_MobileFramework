*** Settings ***
Documentation   Keywords for product details page
Resource    ../GenericLibrary/GlobalSettings.robot

*** Keywords ***

Verify cart and checkout
    [Documentation]    Main Keyword - To checkout the items from the cart
    Wait Until Element Is Visible   ${Searchbar}
    Click Element    ${Searchbar}
    Click Element   ${SearchField}
    Input Text    ${SearchField}    iPhone 6s Plus
    Press Keycode    66
    #Click Element At Coordinates    976    2036
    Wait Until Element Is Visible    ${iPhone}  5s
    Click Element    ${iPhone}
    Swipe    492    1860   572   668
    Wait Until Element Is Visible    ${Cartbutton}       2s
    Click Element   ${Cartbutton}
    Click Element    ${Carticon}
    Sleep    5s
    Click Element    ${Checkout}

Verify shipment details and place order
     [Documentation]    Main Keyword - To verify the checkout page and place an order
     Wait Until Page Contains Element       ${Shipment}
     Log To Console       || checkout page is being verified ||
     ${Firstname}          Get Text    ${Fname}
     ${Lname}              Get Text    ${Lname}
     ${ShipmentState}      Get Text    ${Sstate}
     ${Shipmentcountry}    Get Text   ${Scountry}
     #Log     The shipment address is : ${ShipmentState} , ${Shipmentcountry}
     Log To Console  The shipment address is : ${ShipmentState} , ${Shipmentcountry}
     Capture Page Screenshot
     Click Element    ${Continue}
     Wait Until Page Contains Element   ${Shipment title}
     Click Element     ${FreeShipping}
     ${Shipping type}  Get Text    ${FreeShipping}
     Log To Console     ${Shipping type}
     Capture Page Screenshot
     Click Element    ${Continue shipping type}
     Wait Until Page Contains Element    ${Payment}
     Click Element     ${Payment mode}
     ${COD}  Get Text    ${Payment mode}
     Log To Console       ${COD}
     Capture Page Screenshot
     Click Element    ${Continue Payment}
     Wait Until Page Contains Element        ${Confirm Shipping title}   5s
     ${Final shipping details}  Get Text    ${Confirm shipping address}
     Log To Console    ${Final shipping details}
     Page Should Contain Element           ${Prod_Title}
     Page Should Contain Element    ${Change order}
     Log To Console        || User can modify their cart ||
     Capture Page Screenshot
     Click Element    ${Place order}
     Wait Until Page Contains Element         ${Success msg1}   5s
     ${Order success msg}    Get Text      ${Success msg1}
     Capture Page Screenshot
     Log To Console      ${Order success msg}
     Log To Console        || Order is placed successfully ||
     ${Sucess text}     Get Text    ${Success msg2}
     Log To Console     ${Sucess text}
     Click Element      ${Continue order}






