*** Setting ***
Library  DatabaseLibrary 

*** Keywords ***

Connect 
 Connect To Database   psycopg2   Spotify   Workshop    1234   13.74.252.182  5432 

Disconnect 
 Disconnect From Database 
