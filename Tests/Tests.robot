*** Settings ***
Resource  ${EXECDIR}${/}Resources${/}Database${/}Database.robot
Resource  ${EXECDIR}${/}Resources${/}Spotify${/}Spotify.robot
Resource  ${EXECDIR}${/}Resources${/}Gnoosic${/}Gnoosic.robot
Resource  ${EXECDIR}${/}Resources${/}Excel${/}Excel.robot

*** Test Cases ***
# Search Spotify
    # Open
    # Search      Hidden Citizens
    # Choose Top Result
    # ${song-link}=   Copy Link 


Full Robot Run
    ${wsBands}=     Get Worksheet
    ${recommendedArtist} =      Get Artist  ${wsBands['A2'].value}  ${wsBands['B2'].value}  ${wsBands['C2'].value}
    Open
    Search      ${recommendedArtist}
    ${wsBands['D2'].value}=      Set Variable    ${recommendedArtist}
    Choose Top Result
    ${song-link}=   Copy Link
    Close
    Save Worksheet  ${wsBands}
    Connect
    # Add Song  ${song-link}
    ${play-link}=       Get Song  5
    Disconnect
    Log to console      ${play-link}
    Open
    Play Song  ${play-link}

# Database Test
    # Connect
    # ${song-link}=       Get Song  1
    # Log to console      ${song-link}
    # Disconnect

