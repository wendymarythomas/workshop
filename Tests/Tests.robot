*** Settings ***
Resource  ${EXECDIR}${/}Resources${/}Database${/}Database.robot
Resource  ${EXECDIR}${/}Resources${/}Spotify${/}Spotify.robot
Resource  ${EXECDIR}${/}Resources${/}Gnoosic${/}Gnoosic.robot

*** Test Cases ***
# Search Gnoosic
    # ${retrieved-artist} =   Get Artist  Starset     Hidden Citizens     Unsecret
    # Log to console  ${retrieved-artist}
    
Get Image Location Test
    Open
    Search
    Test Invoke Location