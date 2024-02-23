*** Settings ***
Documentation       This is my first test Cases for file resources

Library             OperatingSystem


*** Variables ***
&{user}     username=test    password=test
&{user2}    username=test2    password=test


*** Keywords ***
Log My username2
    Log    ${user}[username]

Log My password2
    Log    ${user}[password]

Log in user1
    Log    ${user}[username]
    Log    ${user}[password]

Log in user2
    Log My username2
    Log My password2

Log My Specific username1
    [Arguments]    ${USERNAME}
    Log    ${USERNAME}

Log My Specific Username And Password1
    [Arguments]    ${USERNAME2}    ${PASSWORDD}
    Log    ${USERNAME2}
    Log    ${PASSWORDD}
