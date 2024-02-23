*** Settings ***
Documentation       Simple example using AppiumLibrary

Library             AppiumLibrary


*** Variables ***
${ANDROID_AUTOMATION_NAME}      UIAutomator2
${ANDROID_APP}                  android.wdio.native.app.v1.0.8.apk
${ANDROID_PLATFORM_NAME}        Android
${ANDROID_PLATFORM_VERSION}     %{ANDROID_PLATFORM_VERSION=11}
${DEVICENAME}                   emulator-5554


*** Test Cases ***
Should send keys to search box and then check the value
    Open Application    http://127.0.0.1:4723/wd/hub    automationName=${ANDROID_AUTOMATION_NAME}
    ...    platformName=${ANDROID_PLATFORM_NAME}    platformVersion=${ANDROID_PLATFORM_VERSION}
    ...    app=${ANDROID_APP}    devicename=${DEVICENAME}
