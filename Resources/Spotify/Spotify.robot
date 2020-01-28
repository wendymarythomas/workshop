*** Settings ***
Library  ${EXECDIR}${/}Resources${/}CustomKeywords.py

*** Variables ***
# If you store all your images in Resources/Spotify_PO
# then you can use this for your image paths
# Example: ${IMG_PATH}${/}image_name.png
#need to store the images that you will need to select on
${IMG_PATH} =  ${EXECDIR}${/}Resources${/}Spotify

*** Keywords ***

Click 
 [Arguments] ${image} 
 ${location} = CustomKeywords. Get Location   ${image} 
 ${x} ${y}=   CustomKeywords. Center   ${location} 
 CustomKeywords .Click ${x}   ${y} 

Double Click 
 [Arguments]  ${image} 
  ${location} =  CustomKeywords. Get Location{ image} 
  ${x}   ${y}=  CustomKeywords. Center ${location} 
 CustomKeywords.Double Click ${x}   ${y} 

Minimize All Windows 
 CustomKeywords.Key Down winleft 
 CustomKeywords.Press Special Key   d
 CustomKeywords.Key Up winleft 
 Sleep  1

Open 
 Double Click   {IMG_PATH}${/}icon.png
 Sleep 10

Search 
[Arguments]    ${search_text}
 Click    $IMG_PATH}${/}search.png 
 CustomKeywords.Input Text ${search_text} 
 CustomKeywords.Press Special Key enter 
 Sleep 2 

Choose Top Result 
 ${location} =    CustomKeywords.Get Location   ${IMG_PATH}${/}top_result.png 
 ${x}   ${y}= CustomKeywords.Center   ${location} 
 CustomKeywords.Click ${x}  ${Y+215} # NOTE OFFSET 
 Sleep 2
