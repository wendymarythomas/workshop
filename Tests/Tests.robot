*** Settings ***
#Resource  ${EXECDIR}${/}Resources${/}Database${/}Database.robot
Resource  C:\Users\wthomas\Documents\GitHub\workshop\Resources\Database\Database.robot
Resource  ${EXECDIR}${/}Resources${/}Spotify${/}Spotify.robot
Resource  ${EXECDIR}${/}Resources${/}Gnoosic${/}Gnoosic.robot

*** Test Cases ***

workflow
    Gnoosic.Get Artist
    Database.Connect 
    Database.Disconnect  
    Spotify.Minimize All Windows 