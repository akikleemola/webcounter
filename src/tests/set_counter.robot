*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Counter value can be set to ten
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  10
    Click  button >> text=Aseta
    Get Text  body  *=  nappia painettu 10 kertaa

Counter can be increased after setting its value
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  3
    Click  button >> text=Aseta
    Click  button >> text=Paina
    Get Text  body  *=  nappia painettu 4 kertaa