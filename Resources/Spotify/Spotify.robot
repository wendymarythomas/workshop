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

Click With Offset
    [Arguments]     ${image}=${IMG_PATH}${/}TEST-Spotify-Starset-Top-Result-Search.png      ${x-offset}=0   ${y-offset}=0
    ${location}=    CustomKeywords.Get Location     ${image}
    ${x}    ${y}=   CustomKeywords.Center       ${location}
    CustomKeywords.Click    ${x+${x-offset}}    ${y+${y-offset}}

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
    Sleep   5

Choose Top Result
    Click With Offset  ${IMG_PATH}${/}Spotify-Top-Result-Search.png  0  258
    Sleep   4

Copy Link
    ${location_tr}=    CustomKeywords.Get Location     ${IMG_PATH}${/}Spotify-Popular.png
    ${x_tr}    ${y_tr}=   CustomKeywords.Center       ${location_tr}
    CustomKeywords.Right Click     ${x_tr}    ${y_tr+25}
    Sleep   2
    ${location_s}=    CustomKeywords.Get Location     ${IMG_PATH}${/}Spotify-Share.png
    ${x_s}    ${y_s}=   CustomKeywords.Center       ${location_s}
    CustomKeywords.Mouse Move     ${x_s}    ${y_s}
    Sleep   2
    ${location_cl}=    CustomKeywords.Get Location     ${IMG_PATH}${/}Spotify-Copy-Song-Link.png
    ${x_cl}    ${y_cl}=   CustomKeywords.Center       ${location_cl}
    CustomKeywords.Click     ${x_cl}    ${y_cl}
    ${song_link}=   CustomKeywords.Clip Get
    [Return]    ${song_link}

Close
    Click  ${IMG_PATH}${/}Spotify-Close.png
    Sleep   2


Test Get Image Location
    [Arguments]     ${Image}
    ${Location} =   CustomKeywords.Get Location     ${Image}
    ${x}    ${y} =      CustomKeywords.Center   ${Location}
    Log to Console      ${x}
    Log to Console      ${y}

Test Invoke Location
    Test Get Image Location     ${IMG_PATH}${/}TEST-Spotify-Starset-Top-Result-Search.png
    Test Get Image Location     ${IMG_PATH}${/}Spotify-Top-Result-Search.png

Play Song
    [Arguments]     ${song-link}
    Search  ${song-link}
    CustomKeywords.Press Special Key    return