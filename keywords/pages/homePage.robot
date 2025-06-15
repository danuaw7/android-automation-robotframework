*** Keywords ***
Verify on Home Page
  AppiumLibrary.Wait Until Page Contains Element          xpath=//*[@resource-id='HomeSendButton']  timeout=${MEDIUM_TIMEOUT}

Click Top Bar Wallet Button
  AppiumLibrary.Click Element          xpath=//*[@resource-id='topBarWalletName']
