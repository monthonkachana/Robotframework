*** Settings ***
Library     OperatingSystem


*** Variables ***
${Google}       //*[@id="container"]
@{LIST}         TEST1    TEST2    TEST3
&{user}         username=test    password=test
&{user2}        username=test2    password=test


*** Test Cases ***
TEST
    [Tags]    demo
    Log    message
    Log    ${Google}
    Log    ${LIST}[2]

TEST2
    [Tags]    demo2
    Log    message2
    Log    ${LIST}

TEST3
    [Tags]    user
    Log My username
    Log My password
    Log in user1
    Log in user2

TEST4
    [Tags]    set arguments username
    Log My Specific username    ${user}[username]
    Log My Specific username    ${user2}[username]

TEST5
    [Tags]    set arguments username,password
    Log My Specific Username And Password    ${user}[username]    ${user}[password]
    Log My Specific Username And Password    ${user2}[username]    ${user2}[password]

# how to user Keywords section


*** Keywords ***
Log My username
    Log    ${user}[username]

Log My password
    Log    ${user}[password]

Log in user1
    Log    ${user}[username]
    Log    ${user}[password]

Log in user2
    Log My username
    Log My password

Log My Specific username
    [Arguments]    ${USERNAME}
    Log    ${USERNAME}

Log My Specific Username And Password
    [Arguments]    ${USERNAME2}    ${PASSWORDD}
    Log    ${USERNAME2}
    Log    ${PASSWORDD}
