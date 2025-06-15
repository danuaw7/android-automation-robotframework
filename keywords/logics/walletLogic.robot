***Keywords***
Verify Wallet is Successfully Created
  [Arguments]          ${wallet_name}
  onboardingPage.Verify on Wallet is Ready Page
  onboardingPage.Click Skip Later Button
  homePage.Verify on Home Page
  homepage.Click Top Bar Wallet Button
  walletPage.Verify on Wallet Page
  walletPage.Verify the Previously Created Wallet Exists    ${wallet_name}

Add Another Wallet
  homepage.Click Top Bar Wallet Button
  walletPage.Verify on Wallet Page
  walletPage.Verify the Previously Created Wallet Exists       Main Wallet 1
  walletPage.Verify Other Wallets do not Exist      Main Wallet 2
  walletPage.Click Add Walet Button
  walletPage.Verify on Secret Pharase Label Shown
  onboardingPage.Click Create New Wallet Button
  walletPage.Click Create with Secret Pharase Button
