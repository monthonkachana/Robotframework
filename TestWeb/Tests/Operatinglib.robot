*** Settings ***
Library     OperatingSystem


*** Variables ***
${PATH}     ${CURDIR}/openfile.txt


*** Test Cases ***
Example
    Create File    ${PATH}    HelloWord
    File Should Exist    ${PATH}
    Copy File    ${PATH}    ~/openfile.txt
