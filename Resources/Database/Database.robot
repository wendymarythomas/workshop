*** Setting ***
Library     DatabaseLibrary

*** Keywords ***
Connect
    Connect To Database     psycopg2    spotify     postgres   df_password1    127.0.0.1  5432

Disconnect
    Disconnect From Database

Add Song
    [Arguments]     ${song-link}=https://open.spotify.com/track/5rAUZy2eDdegBxUVYxePK2?si=x5hDURi7S-6uIDbIb0Mqkg
    Execute SQL String      INSERT INTO SONGS (SONG_URL) VALUES ('${song-link}')

Get Song
    [Arguments]     ${index}=1
    ${song}=       Query   SELECT * FROM SONGS      returnAsDict=True
    [Return]    ${song[${index}]['song_url']}