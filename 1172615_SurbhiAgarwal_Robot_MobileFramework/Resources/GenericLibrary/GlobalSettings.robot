*** Settings ***
#Library    ApplicationLibrary.MobileLibrary
Library    AppiumLibrary
Library    Screenshot
Library    Collections
Library    String
Library    Process
#Library    RequestsLibrary
#Library    JSONLibrary

Library    OperatingSystem
Library     ../ExcelLibrary/Randon_mail.py


Resource    ../Configuration/Config.robot
Resource    ../GenericLibrary/MobileLibrary.robot
Resource    ../GenericLibrary/AppSettings.robot
Resource    ../PageVariables/Locators.robot
Resource    ../PageRobots/Registration.robot
Resource    ../PageRobots/Homepage.robot
Resource    ../PageRobots/Cart.robot
Resource    ../PageRobots/Checkout.robot
Resource    ../PageRobots/Login.robot
Resource    ../PageRobots/Productdetails.robot
Resource    ../PageRobots/Orderdetails.robot





