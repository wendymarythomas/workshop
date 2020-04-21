*** Settings ***
Library     openpyxl
Library     ${EXECDIR}${/}Resources${/}Excel${/}CustomExcel.py

*** Variables ***
${WB_PATH} =  ${EXECDIR}${/}Resources${/}Excel

*** Keywords ***

Get Worksheet
    ${wbBands} =   Load Workbook   ${WB_PATH}${/}Favourite Bands.xlsx
    ${wsBands} =      Set Variable      ${wbBands['Bands']}
    [Return]    ${wsBands}

Save Worksheet
    [Arguments]     ${wsBands}
    Log to console      ${wsBands['D2'].value}
    ${wbBands} =   Load Workbook   ${WB_PATH}${/}Favourite Bands.xlsx
    ${wbBands['Bands']['D2'].value} =      Set Variable    ${wsBands['D2'].value}
    Save workbook   ${wbBands}



