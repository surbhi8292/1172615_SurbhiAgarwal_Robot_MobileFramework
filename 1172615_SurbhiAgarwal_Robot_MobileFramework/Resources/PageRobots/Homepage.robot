*** Settings ***
Documentation   Keywords for verifying homepage
Resource    ../GenericLibrary/GlobalSettings.robot

*** Keywords ***

Handle homepage headers
    [Documentation]    Main Keyword - To verify the homepage headers
    Wait Until Page Contains Element      ${Evendorlabel}      10s
    Log To Console    || Evendor label is present ||
    Page Should Contain Element  ${Carticon}
    Log To Console    || Cart icon is present ||
    Page Should Contain Element    ${Searchbar}
    Log To Console    || Search bar is present ||
    Capture Page Screenshot
Handle categories
    [Documentation]    Main Keyword - To verify the homepage categries
    Page Should Contain Element  ${HamburgerMenu}
    Log To Console     || Hamburger is present ||
    Click Mobile Element         Menu   ${HamburgerMenu}
    Page Should Contain Element     ${Computers}
    Click Mobile Element         Computer        ${Computers}
    Click Mobile Element         Computer        ${Computers}
    Page Should Contain Element     ${Phones}
    Click Mobile Element          Phone  ${Phones}
    Click Mobile Element          Phone  ${Phones}
    Page Should Contain Element     ${Mobiles}
    Click Mobile Element          Mobile    ${Mobiles}
    Click Mobile Element          Mobile    ${Mobiles}
    Page Should Contain Element     ${Softwares}
    Click Mobile Element          Software   ${Softwares}
    Click Mobile Element          Software   ${Softwares}
    Page Should Contain Element     ${Camera}
    Click Mobile Element          Camera    ${Camera}
    Click Mobile Element          Camera    ${Camera}
    Page Should Contain Element     ${Tablet}
    Click Mobile Element          Tablet    ${Tablet}
    Click Mobile Element          Tablet    ${Tablet}
    Page Should Contain Element    ${Infant}
    Click Mobile Element          Infant    ${Infant}
    Click Mobile Element          Infant    ${Infant}
    Page Should Contain Element     ${Women}
    Click Mobile Element           Women  ${Women}
    Click Mobile Element           Women  ${Women}
    Page Should Contain Element     ${Men}
    Click Mobile Element           men   ${Men}
    Click Mobile Element           men   ${Men}
    Page Should Contain Element     ${Cosmetic}
    Swipe    111    750    105    223
    Click Mobile Element          Cosmetic  ${Cosmetic}
    Click Mobile Element          Cosmetic  ${Cosmetic}
    Page Should Contain Element     ${Fashion}
    Click Mobile Element          Fashion   ${Fashion}
    Click Mobile Element          Fashion   ${Fashion}
    Swipe    611    1887    559    714
    Page Should Contain Element    ${Electronics}
    Click Mobile Element          Electronic   ${Electronics}
    Click Mobile Element          Electronic   ${Electronics}
    Page Should Contain Element   ${Food}
    Click Mobile Element          Food   ${Food}
    Click Mobile Element          Food   ${Food}
    Page Should Contain Element   ${Home}
    Click Mobile Element          Home  ${Home}
    Click Mobile Element          Home  ${Home}
    Click Mobile Element          Close   ${CloseMenu}








