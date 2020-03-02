*** Settings ***
#Resource  ${EXECDIR}${/}Resources${/}Database${/}Database.robot
Resource  C:\\Users\\wthomas\\Documents\\GitHub\\workshop\\Resources\\Database\\Database.robot
#Resource  ${EXECDIR}${/}Resources${/}Spotify${/}Spotify.robot
Resource  C:\\Users\\wthomas\\Documents\\GitHub\\workshop\\Resources\\Spotify\\spotify.robot
#Resource  ${EXECDIR}${/}Resources${/}Gnoosic${/}Gnoosic.robot
Resource  C:\\Users\\wthomas\\Documents\\GitHub\\workshop\\Resources\\Gnoosic\\Gnoosic.robot
#spotifypath
Resource  C:\\Users\\wthomas\\Documents\\GitHub\\workshop\\Resources\\Gnoosic\\Gnoosic.robot

Library  SeleniumLibrary
Library  AutoItLibrary

*** Variables ***
${URL}          http://www.gnoosic.com/
${spotifyURL}   https://accounts.spotify.com/en/login/?_locale=en-GB&continue=https:%2F%2Fwww.spotify.com%2Fuk%2Faccount%2Foverview%2F
${BROWSER}      Google Chrome
${artistresult}  
${artist1}     The Killers
${artist2}     Mustasch
${artist3}     Royal Republic
${notepad++} | C:\\Program Files\\Notepad++\\notepad++.exe
${Spotify}   C:\\Users\\wthomas\\AppData\\Roaming\\Spotify\\Spotify.exe


*** Keywords ***

Get Artist  [Arguments]    ${artist1}   ${artist2}    ${artist3}
    SeleniumLibrary.Open Browser  ${URL}   ${BROWSER}
    SeleniumLibrary.Wait Until Element Is Visible   class:continue
    SeleniumLibrary.Click Element  class:continue
    SeleniumLibrary.Wait Until Element Is Visible   name:Fave03
    SeleniumLibrary.Input Text  name:Fave01   ${artist1}
    SeleniumLibrary.Input Text  name:Fave02   ${artist2}
    SeleniumLibrary.Input Text  name:Fave03   ${artist3}
    SeleniumLibrary.Submit Form
    ${artistresult} =   SeleniumLibrary.Get Text   id:result  
    [Return]   ${artistresult}
    #BuiltIn.Return from Keyword   ${artistresult}
    SeleniumLibrary.Close All Browsers


Get Spotify  [Arguments]    ${artistresult}
    AutoItLibrary.Run    ${Spotify}

    #Run   Spotify.exe  C:\\Users\\wthomas\\AppData\\Roaming\\Spotify\\
  #  SeleniumLibrary.Open Browser  ${spotifyURL}   ${BROWSER}
  #  SeleniumLibrary.Wait Until Element Is Visible   class:a.btn.btn-block btn-facebook ng-binding
  #  SeleniumLibrary.Click Element   class:'a.btn.btn-block btn-facebook ng-binding'
  #  SeleniumLibrary.Close All Browsers
*** Test Cases ***

workflow
   ${artistresult} =    Get Artist  ${artist1}   ${artist2}   ${artist3} 
   Get Spotify    ${artistresult} 
   