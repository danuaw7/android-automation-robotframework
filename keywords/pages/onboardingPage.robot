*** Keywords ***
Verify on Onboarding Page
  AppiumLibrary.Wait Until Page Contains            Create new wallet        timeout=${MEDIUM_TIMEOUT}

Verify on Create Passcode Page
  AppiumLibrary.Wait Until Page Contains           Create passcode       timeout=${MEDIUM_TIMEOUT}

Verify on Confirm Passcode Page
  AppiumLibrary.Wait Until Page Contains          Confirm passcode       timeout=${MEDIUM_TIMEOUT}

Verify on Wallet is Ready Page
  AppiumLibrary.Wait Until Page Contains           Brilliant, your wallet is ready!     timeout=${LONG_TIMEOUT}

Verify on Enter Passcode Page
  AppiumLibrary.Wait Until Page Contains          Enter passcode       timeout=${MEDIUM_TIMEOUT}

Click Skip Later Button
  AppiumLibrary.Click Element        //*[@text="Skip, I'll do it later"]

Click Create New Wallet Button
  AppiumLibrary.Click Element        //*[@text='Create new wallet']

Input PIN By Virtual Keyboard
  [arguments]   ${number}
  Repeat Keyword    6 times    AppiumLibrary.Click Element      xpath=//*[@text="${number}"]
