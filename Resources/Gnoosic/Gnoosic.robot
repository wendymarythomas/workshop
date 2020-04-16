*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Get Artist  
    [Arguments]     ${fave-01}=Starset  ${fave-02}=Hidden Citizens  ${fave-03}=Atreyu
    SeleniumLibrary.OpenBrowser     http://www.gnoosic.com/faves.php    GoogleChrome
    SeleniumLibrary.WaitUntilElementIsVisible   name:Fave03
    SeleniumLibrary.InputText   name:Fave01     ${fave-01}
    SeleniumLibrary.InputText   name:Fave02     ${fave-02}
    SeleniumLibrary.InputText   name:Fave03     ${fave-03}
    SeleniumLibrary.SubmitForm
    ${artist-name} =    SeleniumLibrary.GetText    id:result
    SeleniumLibrary.CloseBrowser
    [Return]    ${artist-name}
