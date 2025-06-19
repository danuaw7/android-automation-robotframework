# Android Automation Testing with Robot Framework

This project uses [Robot Framework](https://robotframework.org/) and [Appium](https://appium.io/) to automate Android app testing.

## 📦 Requirements

- Python 3.8+
- Node.js & npm
- Appium
- Android Emulator or real device
- Robot Framework libraries

## ⚙️ Setup Instructions

1. **Install Python 3.8+**
   ```bash
   brew install python        # via Homebrew

2. **Install Node.js dan npm**
   ```bash
   brew install node

3. **Install Appium**
   ```bash
   npm install -g appium

4. **Install Robot Framework dan Library via virtualenv**
   ```bash
   python -m venv robot-env
   source robot-env/bin/activate
   pip install -r requirements.txt

## 🧪 Verify All Installed
- python --version
- pip --version
- node -v
- npm -v
- appium -v
- adb devices

## 📱 Demo APK
[Trust Wallet APK ](https://trustwallet.com/id)

## 📹 Automation Test Result Video
https://imgur.com/udnSKDD

## 🚀 Running Test
Notes: Make sure, virtual env activated before running test => source robot-env/bin/activate
   ```bash
   robot tests/walletCreation.robot
