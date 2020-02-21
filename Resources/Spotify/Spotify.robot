*** Settings ***
#Library  ${EXECDIR}${/}Resources${/}CustomKeywords.py
#Library  ${EXECDIR}${/}Resources${/}CustomKeywords.py
Library  C:\\Users\\wthomas\\Documents\\GitHub\\workshop\\Resources\\CustomKeywords.py
*** Variables ***
#If you store all your images in Resources/Spotify_PO
#then you can use this for your image paths
#Example: ${IMG_PATH}${/}image_name.png
#need to store the images that you will need to select on
#
#${IMG_PATH} =  ${EXECDIR}${/}Resources${/}Spotify
${IMG_PATH} =  C:\\Users\\wthomas\\Documents\\GitHub\\workshop\\Resources\\Spotify
*** Keywords ***
Click 
  [Arguments] ${image} 
  ${location} = CustomKeywords.Get Location    ${image} 
  ${x} ${y} =   CustomKeywords.Center   ${location} 
   CustomKeywords.Click ${x}   ${y} 

#Double Click 
# [Arguments]  ${image} 
#  ${location} =   CustomKeywords.Get Location   ${image} 
#  ${x}   ${y} =   CustomKeywords.Center   ${location} 
#  CustomKeywords.Double Click ${x}   ${y} 


Minimize All Windows 
  CustomKeywords.Key Down   winleft 
  CustomKeywords.Press Special Key   d
  CustomKeywords.Key Up    winleft 
  Sleep  1

Open 
  Double Click   ${IMG_PATH}${/}icon.png
  Sleep   10
 

#Search 
# [Arguments]    ${search_text}
# Click    ${IMG_PATH}${/}search.png 
# CustomKeywords.Input Text   ${search_text} 
# CustomKeywords.Press Special Key   enter 
# Sleep   2 

#Choose Top Result 
 #${location} =    CustomKeywords.Get Location   ${IMG_PATH}${/}top_result.png 
 #${x}   ${y}= CustomKeywords.Center   ${location} 
 #CustomKeywords.Click   ${x}   ${Y+215} # NOTE OFFSET 
 #Sleep   2

#Copy Link To Most Popular Song 
# ${location} =   CustomKeywords.Get Location    ${IMG_PATH}${/}popular.png 
# ${x]   $[y} =   CustomKeywords.Center    ${location} 
 #CustomKeywords.Right Click ${x}   ${Y+46}  #NOTE OFFSET 
 #Sleep    1 
 #${location} =   Customkeywords.Get Location   ${IMG_PATH}${/}share.png 
 #${x]   $[y} =   CustomKeywords.Center    ${location} 
 #CustomKeywords.Mouse Move  ${x} ${y} 
 #Sleep    1 
 #Click  ${IMG_PATH}${/}copy_link.png 
# ${link} =  CustomKeywords.Clip Get 
 #[Return]   ${link} 

#Close
#  Customkeywords.Get Location  ${IMG_PATH}${/}Close.png
#  ${x}   ${y} =   CustomKeywords.Center   ${location} 
#  CustomKeywords.Click ${x}  ${y}

 #Get Link To Most Popular Song 
#[Arguments] ${artist} 
 #Minimize All Windows 
#Clicks in the top right corner to deselect items on the desktop 
 #CustomKeywords.Click   1919  0
 #Sleep   1 
 #Open 
 #Search ${artist} 
# Choose Top Result 
# ${link} =  Copy Link To Most Popular Song
 #Sleep   2 
 #Close 
 #Sleep  2 
# [Return]   ${link} 
