*** Settings ***
Documentation   This suite will handle all the testcase is related to
...     the invalid credenatials - OEM - 102

Library     OperatingSystem
Library     SeleniumLibrary
Resource    ../Resource/Base/common_functionality.resource

*** Test Cases ***
TC1
Verify Valid Credentials Tests
    Launch Browser
    Input Text    id=authUser    admin
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element   xpath=//button[@type='submit
    Element Should Contain    xpath=//div[contains(text(),'Invalid')]    Invalid username or password
    Wait Until Page Contains    Flow Board      50s
    Title Should Be    OpenEMR


TC2
