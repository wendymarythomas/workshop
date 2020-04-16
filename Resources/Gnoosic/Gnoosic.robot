*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Get Artist  
    SeleniumLibrary.OpenBrowser     http://www.gnoosic.com/faves.php    GoogleChrome
    SeleniumLibrary.WaitUntilElementIsVisible   name:Fave03
    SeleniumLibrary.InputText   name:Fave01     Starset
    SeleniumLibrary.InputText   name:Fave02     Hidden Citizens
    SeleniumLibrary.InputText   name:Fave03     Atreyu
    SeleniumLibrary.SubmitForm
    ${artist-name} =    SeleniumLibrary.GetText    id:result
    SeleniumLibrary.CloseBrowser
    Log to Console  ${artist-name}
    [Return]    ${artist-name}
