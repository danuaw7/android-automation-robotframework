*** Keywords ***
Dismiss Device Security Compromised Alert Modal
  ${status}=          Run Keyword And Return Status               Verify Device Security Compromised Alert Modal
  Run Keyword If      '${status}'=='True'       Run Keywords        Click OK Button

Verify Device Security Compromised Alert Modal
  AppiumLibrary.Wait Until Page Contains         DEVICE SECURITY COMPROMISED         timeout=${MEDIUM_TIMEOUT}

Click OK Button
  AppiumLibrary.Click Element         xpath=//*[@text='OK']
