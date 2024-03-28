*** Settings ***
Documentation  Retail Demo Appplication
Resource    ../GenericLibrary/GlobalSettings.robot
Library         RPA.Excel.Files
Test Setup        Launch The Application
Test Teardown       Close the app

*** Test Cases ***
Evendor application demo
    [Documentation]    Main Keyword - To register a new user into the app and place an order
    Handle homepage headers
    Handle Categories
    Verify register menu
    Register New User
    Login A User Before Order Placing           ${email}
    User navigates to PDP
    User navigates to review and rating section
    Verify Quantity, Specification, Description
    Add to Wishlist
    Verify Wishlist
    Add to cart
    Verify cart page
    Verify shipment details and place order
    Login A User After Order Placing         ${email}
    Verify order detail
    Fetch order id
