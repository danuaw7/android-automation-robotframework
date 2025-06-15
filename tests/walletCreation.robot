*** Settings ***
Resource            ../../resource.robot
Suite Setup         Spawn Appium Server
Test Teardown       Close Application

*** Test Cases ***
User is Able to Create New Wallet from Onboarding Page
    setup.Open Trust App with Clear Cache
    modalPage.Dismiss Device Security Compromised Alert Modal
    onboardingLogic.Create New Wallet
    onboardingLogic.Input New Passcode
    walletLogic.Verify Wallet is Successfully Created       Main Wallet 1  
    walletPage.Verify Other Wallets do not Exist            Main Wallet 2

User is Able to Add Another Wallet from Wallets Page
    setup.Open Trust App without Clear Cache
    onboardingLogic.Input Existing Passcode
    homePage.Verify on Home Page
    walletLogic.Add Another Wallet
    walletLogic.Verify Wallet is Successfully Created       Main Wallet 2
    walletPage.Verify Other Wallets do not Exist            Main Wallet 3
