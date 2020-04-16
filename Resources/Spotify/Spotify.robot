*** Settings ***
Library  ${EXECDIR}${/}Resources${/}CustomKeywords.py

*** Variables ***
# If you store all your images in Resources/Spotify_PO
# then you can use this for your image paths
# Example: ${IMG_PATH}${/}image_name.png
${IMG_PATH} =  ${EXECDIR}${/}Resources${/}Spotify${/}Images

*** Keywords ***
Click
    [Arguments]     ${image}=${IMG_PATH}${/}TEST-Spotify-Starset-Top-Result-Search.png
    ${location}=    CustomKeywords.Get Location     ${image}
    ${x}    ${y}=   CustomKeywords.Center       ${location}
    CustomKeywords.Click    ${x}    ${y}


Double Click
    [Arguments]     ${image}
    ${location} =    CustomKeywords.Get Location  ${image}
    ${x}    ${y} =   CustomKeywords.Center       ${location}
    CustomKeywords.Double Click    ${x}    ${y}

Minimize All Windows
    CustomKeywords.Key Down     winleft
    CustomKeywords.Press Special Key    d
    CustomKeywords.Key Up   winleft
    Sleep   5

Maximise Current Window
    CustomKeywords.Key Down     winleft
    CustomKeywords.Press Special Key    up
    CustomKeywords.Key Up   winleft
    Sleep   1

Open Via Shorcut
    CustomKeywords.Key Down     ctrl
    CustomKeywords.Key Down     alt
    CustomKeywords.Press Special Key    s
    CustomKeywords.Key Up       alt
    CustomKeywords.Key Up       ctrl

Open
    Minimize All Windows
    #Double Click  ${IMG_PATH}${/}Spotify-Logo.png
    Open Via Shorcut
    Maximise Current Window
    Sleep   5

Search
    [Arguments]     ${artist}=Startset
    Click  ${IMG_PATH}${/}Spotify-Search.png
    CustomKeywords.Input Text   ${artist}
    CustomKeywords.Press Special Key    return
    Sleep   2

Choose Top Result

Copy Link

Close


Test Get Image Location
    [Arguments]     ${Image}
    ${Location} =   CustomKeywords.Get Location     ${Image}
    ${x}    ${y} =      CustomKeywords.Center   ${Location}
    Log to Console      ${x}
    Log to Console      ${y}

Test Invoke Location
    Test Get Image Location     ${IMG_PATH}${/}TEST-Spotify-Starset-Top-Result-Search.png
