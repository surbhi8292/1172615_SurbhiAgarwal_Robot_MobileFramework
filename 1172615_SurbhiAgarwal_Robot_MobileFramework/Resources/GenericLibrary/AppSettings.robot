*** Settings ***
Documentation   Keywords for app setup
Resource    ../GenericLibrary/GlobalSettings.robot
*** Keywords ***
Launch the Application
    [Documentation]    Main Keyword - Launch the application in cloud devices
    Open Application
    ...   remote_url=${APPIUM_SERVER}
    ...   automationName=${AUTOMATION_NAME}
    ...   platformName=${PLATFORM}
    ...   platformVersion=${PLATFORM_VERSION}
    ...   deviceName=${DEVICENAME}
    ...   app=${APPNAME}
    ...   sauce:username=${USERNAME}
    ...   sauce:accessKey=${ACCESSKEY}
    ...   autoAcceptAlerts=true

Reset App
     [Documentation]    Main Keyword - By Reset App keyword application run will from starting page(App will start from lanch page)
     Reset Application

Close the app
    [Documentation]    Main Keyword - By Close App keyword application will close
    Close Application
