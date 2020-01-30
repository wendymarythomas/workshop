*** Setting ***
Library  DatabaseLibrary 

*** Keywords ***

Connect 
   DatabaseLibrary.Connect To Database   psycopg2  Spotify  Workshop  1234  13.74.252.182 5432 

Disconnect 
   DatabaseLibrary.Disconnect From Database 
