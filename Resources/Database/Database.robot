*** Setting ***
Library  DatabaseLibrary 
 
*** Keywords ***

Connect 
  [Arguments]   ${artist_result}
    DatabaseLibrary.Connect To Database  psycopg2  Spotify  ${artist_result}  1234  13.74.252.182  5432 

Disconnect 
   DatabaseLibrary.Disconnect From Database 
