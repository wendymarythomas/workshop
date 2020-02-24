*** Settings ***
#Resource  ${EXECDIR}${/}Resources${/}Database${/}Database.robot
Resource  C:\\Users\\wthomas\\Documents\\GitHub\\workshop\\Resources\\Database\\Database.robot

#Resource  ${EXECDIR}${/}Resources${/}Spotify${/}Spotify.robot
Resource  C:\\Users\\wthomas\\Documents\\GitHub\\workshop\\Resources\\Spotify\\spotify.robot

#Resource  ${EXECDIR}${/}Resources${/}Gnoosic${/}Gnoosic.robot
Resource  C:\\Users\\wthomas\\Documents\\GitHub\\workshop\\Resources\\Gnoosic\\Gnoosic.robot

*** Variables ***
${URL}          http://blazedemo.com/
${BROWSER}      Chrome
Set Global Variable   ${artist_result}   hello 

*** Test Cases ***

workflow


    Gnoosic.Get Artist
    Database.Connect   ${artist_result}
    Database.Disconnect  
    Spotify.Minimize All Windows 