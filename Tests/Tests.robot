*** Settings ***
Resource  ${EXECDIR}${/}Resources${/}Database${/}Database.robot
Resource  ${EXECDIR}${/}Resources${/}Spotify${/}Spotify.robot
Resource  ${EXECDIR}${/}Resources${/}Gnoosic${/}Gnoosic.robot

Library     Gnoosic.robot
*** Test Cases ***
Search Gnoosic
    ${retrieved-artist} =   Get Artist
    