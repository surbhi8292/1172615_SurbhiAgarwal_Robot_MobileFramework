*** Settings ***
Documentation   Keywords for app registration page
Resource    ../GenericLibrary/GlobalSettings.robot
Library     RPA.Excel.Files

*** Keywords ***

Verify register menu
    [Documentation]    Main Keyword - To verify menu link from menu options
    Wait Until Element Is Visible    ${Menu}        15s
    Click Mobile Element         Menubar    ${Menu}

Register New User
      [Documentation]    Main Keyword - To register a new user using data from excel
      Wait Until Page Contains Element    ${Register}      5s
      Click Mobile Element         Register    ${Register}
      Log To Console             Clicked on Register dropdown from Menu
             ${FirstName}       Excel Fetch     2   A
             ${LastName}        Excel Fetch     2   B
             ${telephone}       Excel Fetch     2   D
             ${fax}             Excel Fetch     2   E
             ${company}         Excel Fetch     2   F
             ${address1}        Excel Fetch     2   G
             ${address2}        Excel Fetch     2   H
             ${city}            Excel Fetch     2   I
             ${postcode}        Excel Fetch     2   J
             ${password}        Excel Fetch     2   K
             ${con_password}    Excel Fetch     2   L
            Input Text              ${FirstNameField}           ${FirstName}
            Input Text              ${LastNameField}            ${LastName}
            Random Email Generator
            Log                     REGISTRATION_RANDOM_GENERATED_EMAIL-${email}                 console=yes
            Input Text              ${emailField}               ${email}
            Input Text              ${telephoneField}           ${telephone}
            Input Text              ${faxField}                 ${fax}
            Input Text              ${companyField}             ${company}
            Swipe     509  2007  520  996
            Input Text              ${address1Field}            ${address1}
            Input Text              ${address2Field}            ${address2}
            Input Text              ${cityField}                ${city}
            Input Text              ${postcodeField}            ${postcode}
            Swipe     509  2007  520  996
            Click Element           ${countryyField}
            Click Element           ${countryDropdown}
            Click Element           ${stateeField}
            Click Element           ${stateDropdown}
            Input Text              ${passwordField}            ${password}
            Input Text              ${con_passwordField}        ${con_password}
            Swipe     509  2007  520  996
            Click Element           ${subscribe_yess}
            Click Element           ${privacyy}
            Click Mobile Element    SubmitToRegisterButton     ${Submitt}
            Wait Until Page Contains Element    ${Confirm_Msg}
            Capture Page Screenshot
            Click Element           ${Confirm_Continue}

Excel Fetch
    [Documentation]    This Keyword is to fetch cell values from the excel and provide in required fields
    [Arguments]     ${row}       ${column}
    #Open Workbook   C:\\Users\\surbhi.agarwal02\\PycharmProjects\\Demoproject\\Data\\Demo_data.xlsx
    Open Workbook    C:\\Users\\surbhi.agarwal02\\PycharmProjects\\1172615_SurbhiAgarwal_Robot_MobileFramework\\Data\\Demo_data.xlsx
    Set Active Worksheet    TestData
    ${value}    Get Cell Value    ${row}    ${column}
    Save Workbook
    Close Workbook
    [Return]    ${value}







