*** Settings ***
Documentation   Keywords for app login page
Resource    ../GenericLibrary/GlobalSettings.robot

*** Keywords ***

Login a user before order placing
      [Documentation]    Main Keyword - To login a user into app to place an order
      [Arguments]      ${Usermail}
      ${password}        Excel Fetch     2   K
      Log                     LOGIN_RANDOM_GENERATED_EMAIL-${Usermail}                 console=yes
      Input Text       ${MailField}    ${Usermail}
      Input Text       ${PasswrdField}     ${password}
      Capture Page Screenshot
      Click Element    ${LoginButton}


Login a user after order placing
      [Documentation]    Main Keyword - To login a user into app to verify the order placed
      [Arguments]      ${Usermail}
      ${password}        Excel Fetch     2   K
      Wait Until Element Is Visible    ${Menu}        10s
      Click Element    ${Menu}
      Click Element    ${Login}
      Input Text       ${MailField}    ${Usermail}
      Input Text       ${PasswrdField}     ${password}
      Click Element    ${LoginButton}

