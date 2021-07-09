*** Settings ***
Documentation           This file will handle all the browser/application configurations

Library     OperatingSystem
Library     SeleniumLibrary
*** Keywords ***
Launch Browser
    Append To Environment Variable    Path      ${EXECDIR}${/}driver
    Open Browser    gc=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://demo.openemr.io/b/openemr/index.php

End Browser
    Close All Browsers


