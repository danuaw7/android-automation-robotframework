*** Keywords ***
Verify on Wallet Page
  AppiumLibrary.Wait Until Page Contains            Wallets         timeout=${MEDIUM_TIMEOUT}

Verify the Previously Created Wallet Exists
  [Arguments]         ${wallet_name}
  AppiumLibrary.Wait Until Page Contains Element      xpath=//*[@text="${wallet_name}"]

Verify Other Wallets do not Exist
  [Arguments]         ${wallet_name}
  AppiumLibrary.Page Should Not Contain Element       xpath=//*[@text="${wallet_name}"]

Verify on Secret Pharase Label Shown
  AppiumLibrary.Wait Until Page Contains          Secret phrase        timeout=${MEDIUM_TIMEOUT}

Click Add Walet Button
  AppiumLibrary.Click Element          xpath=//*[@resource-id='addWalletIconButton']

Click Create with Secret Pharase Button
  Verify on Secret Pharase Label Shown
  AppiumLibrary.Click Element          xpath=//*[@resource-id='secretPhraseCreateButton']
