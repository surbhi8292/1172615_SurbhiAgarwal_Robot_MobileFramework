*** Settings ***
Documentation  Retail Demo Appplication
Resource    ../GenericLibrary/GlobalSettings.robot
Resource    ../PageRobots/Homepage.robot
Resource    ../PageRobots/Registration.robot
Resource    ../PageRobots/Login.robot
Resource    ../PageRobots/Productdetails.robot
Resource    ../PageRobots/Cart.robot
Resource    ../PageRobots/Checkout.robot
Resource    ../PageRobots/Orderdetails.robot
Library     RPA.Excel.Files
Test Setup    Launch The Application
Test Teardown       Close the app

*** Test Cases ***
Start application
    Launch the Application
    #Random Email Generator
User verfies homepage headers
    Handle homepage headers
    Handle Categories
User registers
    Verify register menu
    Register New User
    ${password}        Excel Fetch     2   K
    Login a user         ${email}      ${password}
User login
    ${password}        Excel Fetch     2   K
    Login a user         ${email}      ${password}
User verifies PDP and gives rating
    ${password}        Excel Fetch     2   K
    Login a user         ${email}      $password
    User navigates to PDP
    User navigates to review and rating section
    Verify Quantity, Specification, Description
    Add to Wishlist
    Verify Wishlist
    Add to cart
User verifies cart page
    Login a user       surbhi@gmail.com   surbhi@
    Verifies cart button in pdp
    Verify cart page
User verifies checkout page

    Login a user       surbhi@gmail.com   surbhi@
    Verify Cart And Checkout
    Verify shipment details and place order
User verifies ODP

    Login a user       surbhi@gmail.com   surbhi@
    Search and add to cart
    Navigating to checkout page
    Order Placing
    Login a user       surbhi@gmail.com   surbhi@
    Verify order detail
    Fetch order id





