*** Settings ***
Resource  ${EXECDIR}${/}Resources${/}Database${/}Database.robot
Resource  ${EXECDIR}${/}Resources${/}Spotify${/}Spotify.robot
Resource  ${EXECDIR}${/}Resources${/}Gnoosic${/}Gnoosic.robot

*** Keywords ***
Search Gnoosic
    ${retrieved-artist}=   Get Artist  Atreyu     Globus     Les Friction
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
    Close
    Connect
    # Add Song  ${song-link}
    ${play-link}=       Get Song  2
    Log to console      ${play-link}
    Open
    Play Song  ${play-link}

# Database Test
    # Connect
    # ${song-link}=       Get Song  1
    # Log to console      ${song-link}
    # Disconnect

