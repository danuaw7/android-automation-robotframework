*** Keywords ***
Spawn Appium Server
    ${result} =    Start Process    appium
    ...            -p    40
    ...            --base-path    /wd/hub
    ...            stdout=appium-log.txt
    ...            stderr=appium-log.txt
    Set Suite Variable    ${result}
    Wait Until Appium Ready        40

Wait Until Appium Ready
    [Arguments]       ${timeout}=40
    Wait Until Keyword Succeeds
    ...    ${timeout}s
    ...    2s
    ...    Run Keyword And Ignore Error    Check Appium Is Running    40

Check Appium Is Running
    ${resp} =    Run Process    curl    http://localhost:40/wd/hub/status    shell=True    stdout=STRING
    Should Contain    ${resp.stdout}    status

Open Trust App with Clear Cache
    Open Application        ${APPIUM_SERVER}
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    automationName=${AUTOMATION_NAME}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    newCommandTimeout=15000
    ...    autoGrantPermissions=true
    ...    disableWindowAnimation=true
    ...    noReset=false
 
Open Trust App without Clear Cache
    Open Application        ${APPIUM_SERVER}
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    automationName=${AUTOMATION_NAME}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    newCommandTimeout=15000
    ...    autoGrantPermissions=true
    ...    disableWindowAnimation=true
    ...    noReset=true
