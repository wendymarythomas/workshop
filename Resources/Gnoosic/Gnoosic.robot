*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Get Artist
    SeleniumLibrary.Open Browser  http://www.gnoosic.com/   Google Chrome
    SeleniumLibrary.Wait Until Element Is Visible   class:continue
    SeleniumLibrary.Click Element  class:continue
    SeleniumLibrary.Wait Until Element Is Visible   name:Fave03
    SeleniumLibrary.Input Text  name:Fave01   The Killers
    SeleniumLibrary.Input Text  name:Fave02   Mustasch
    SeleniumLibrary.Input Text  name:Fave03   Royal Republic
    SeleniumLibrary.Submit Form
    ${artist_result} =  SeleniumLibrary.Get Text id:result
    SeleniumLibrary.Close All Browsers
    [Return] ${artist_result}
