*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Reset Counter And Go To Home Page

*** Test Cases ***
Set Counter To Ten
    Fill Text    input[name="value"]    10
    Click    button >> text=Aseta
    Get Text    body    *=    nappia painettu 10 kertaa

*** Keywords ***
Reset Counter And Go To Home Page
    Go To    ${HOME_URL}
    Click    button >> text=Nollaa
    Go To    ${HOME_URL}