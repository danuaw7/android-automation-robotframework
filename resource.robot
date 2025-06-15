*** Settings ***
Library           AppiumLibrary
Library           DebugLibrary
Library           Process
Library           OperatingSystem
Resource          setup.robot
Resource          keywords/pages/PAGES_IMPORT.robot
Resource          keywords/logics/LOGICS_IMPORT.robot

*** Variables ***
${APPIUM_SERVER}            http://localhost:40/wd/hub
${PLATFORM_NAME}            Android
${PLATFORM_VERSION}         12
${DEVICE_NAME}              emulator-5556
${AUTOMATION_NAME}          UiAutomator2
${APP_PACKAGE}              com.wallet.crypto.trustapp
${APP_ACTIVITY}             com.wallet.crypto.trustapp.ui.app.AppActivity
${REMOTE_SELENIUM}          false
${MEDIUM_TIMEOUT}           10
${LONG_TIMEOUT}             45
