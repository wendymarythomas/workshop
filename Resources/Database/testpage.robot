*** Setting ***
Library  DatabaseLibrary 

*** Keywords ***

Connect 
 Connect To Database  psycopg2 Spotify Workshop  1234 13.74.252.182 5432 

Disconnect 

 Disconnect From Database 


*** Keywords ***
Click 
 [Arguments] ${image} 
 ${location} = CustomKeywords.Get Location   ${image} 
 ${x} ${y} =   CustomKeywords.Center   ${location} 
 CustomKeywords.Click ${x}   ${y} 