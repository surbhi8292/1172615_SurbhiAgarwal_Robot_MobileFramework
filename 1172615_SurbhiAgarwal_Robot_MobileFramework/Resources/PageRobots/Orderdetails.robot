*** Settings ***
Documentation   Keywords for product details page
Resource    ../GenericLibrary/GlobalSettings.robot

*** Keywords ***

Search and add to cart
    [Documentation]    Main Keyword - To search and add item to cart
    Wait Until Element Is Visible   ${Searchbar}
    Click Element    ${Searchbar}
    Click Element   ${SearchField}
    Input Text    ${SearchField}    iPhone 6s Plus
    Press Keycode    66
    #Click Element At Coordinates    976    2036
    Wait Until Element Is Visible    ${iPhone}  2s
    Click Element    ${iPhone}
    Swipe    492    1860   572   668
    Wait Until Element Is Visible    ${Cartbutton}       2s
    Click Element   ${Cartbutton}

Navigating to checkout page
    [Documentation]    Main Keyword - To navigate to checkout page
    Click Element    ${Carticon}
    Click Element    ${Checkout}

Order placing
    [Documentation]    Main Keyword - To place an order
     Click Element      ${Continue}
     Click Element      ${FreeShipping}
     Click Element    ${Continue shipping type}
     #Wait Until Page Contains Element    ${Payment mode}
     Click Element      ${Payment mode}
     Click Element    ${Continue Payment}
     Click Element    ${Place order}
     Click Element      ${Continue order}

Verify order detail
    [Documentation]    Main Keyword - To verify the order link from menu and click
    Wait Until Element Is Visible    ${Menu}
    Click Element    ${Menu}
    Click Element    ${Orders}
    Page Should Contain Element   ${Order title}
    Capture Page Screenshot
    ${Get order title}   Get Text    ${Order title}
    Log To Console     ${Get order title}

Fetch order id
    [Documentation]    Main Keyword - To fetch order id from order details page
    Wait Until Page Contains Element     ${Order id}
    ${OrderNo}   Get Text       ${Order id}
    Log                     ORDERID-${OrderNo}                 console=yes
    Excel write    2  M   ${OrderNo}

Excel write
    [Documentation]    This Keyword is to fetch values from the app and provide update in excel
    [Arguments]     ${row}       ${column}  ${inputOrderid}
    #Open Workbook    C:\\Users\\surbhi.agarwal02\\PycharmProjects\\Demoproject\\Data\\Demo_data.xlsx
    Open Workbook     C:\\Users\\surbhi.agarwal02\\PycharmProjects\\1172615_SurbhiAgarwal_Robot_MobileFramework\\Data\\Demo_data.xlsx
    Set Active Worksheet    TestData
    Set Cell Value    ${row}    ${column}  ${inputOrderid}
    Save Workbook
    Close Workbook


