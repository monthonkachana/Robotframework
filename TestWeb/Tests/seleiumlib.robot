*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${BROWSER}      Chrome
${URL}          http://www.example.com


*** Test Cases ***
Open Browser To Example
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    Example Domains

Search for Robot Framework
    Input Text    name=q    Robot Framework
    Click Button    name=btnK
    Page Should Contain    Robot Framework

Close Browser
    Close Browser
