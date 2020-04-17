*** Settings ***
Resource  ${EXECDIR}${/}Resources${/}Database${/}Database.robot
Resource  ${EXECDIR}${/}Resources${/}Spotify${/}Spotify.robot
Resource  ${EXECDIR}${/}Resources${/}Gnoosic${/}Gnoosic.robot

*** Keywords ***
Search Gnoosic
    ${retrieved-artist}=   Get Artist  Starset     Hidden Citizens     Unsecret
    [Return]    ${retrieved-artist}

*** Test Cases ***
# Search Spotify
    # Open
    # Search      Hidden Citizens
    # Choose Top Result
    # ${song-link}=   Copy Link
    # Log to console      ${song-link}    


Full Robot Run
    ${artist}=  Search Gnoosic
    Open
    Search      ${artist}
    Choose Top Result
    ${song-link}=   Copy Link
    Log to console      ${song-link}
    Close