*** Settings ***
#Resource  ${EXECDIR}${/}Resources${/}Database${/}Database.robot
Resource  C:\\Users\\wthomas\\Documents\\GitHub\\workshop\\Resources\\Database\\Database.robot
#Resource  ${EXECDIR}${/}Resources${/}Spotify${/}Spotify.robot
Resource  C:\\Users\\wthomas\\Documents\\GitHub\\workshop\\Resources\\Spotify\\spotify.robot
#Resource  ${EXECDIR}${/}Resources${/}Gnoosic${/}Gnoosic.robot
Resource  C:\\Users\\wthomas\\Documents\\GitHub\\workshop\\Resources\\Gnoosic\\Gnoosic.robot

Library  SeleniumLibrary

*** Variables ***
${URL}          http://www.gnoosic.com/
${BROWSER}      Google Chrome
${artistresult}  
${artist1}     The Killers
${artist2}     Mustasch
${artist3}     Royal Republic


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
 
*** Test Cases ***
#setupglobals
  # Set Global Variable  ${artistresult}

workflow
   ${artistresult} =    Get Artist  ${artist1}   ${artist2}   ${artist3}  
   # Database.Connect   ${artist_result}
   # Database.Connect   ${banana}
    Database.Disconnect  
    Spotify.Minimize All Windows 