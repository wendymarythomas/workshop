*** Settings ***
#Resource  ${EXECDIR}${/}Resources${/}Database${/}Database.robot
Resource  C:\\Users\\wthomas\\Documents\\GitHub\\workshop\\Resources\\Database\\Database.robot

#Resource  ${EXECDIR}${/}Resources${/}Spotify${/}Spotify.robot
Resource  C:\\Users\\wthomas\\Documents\\GitHub\\workshop\\Resources\\Spotify\\spotify.robot

#Resource  ${EXECDIR}${/}Resources${/}Gnoosic${/}Gnoosic.robot
Resource  C:\\Users\\wthomas\\Documents\\GitHub\\workshop\\Resources\\Gnoosic\\Gnoosic.robot



*** Variables ***
#${URL}          http://blazedemo.com/
#${BROWSER}      Chrome
${artist_result}  myband
*** Keywords ***

*** Test Cases ***
setup2
     Set Global Variable  ${artist_result}

workflow
    Gnoosic.Get Artist
   # Database.Connect   ${artist_result}
   # Database.Connect   ${banana}
    Database.Disconnect  
    Spotify.Minimize All Windows 