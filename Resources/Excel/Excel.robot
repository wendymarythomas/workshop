*** Settings ***
Library     openpyxl

*** Variables ***
${WB_PATH} =  ${EXECDIR}${/}Resources${/}Excel

*** Keywords ***

Get Worksheet
    ${wbBands} =   Load Workbook   ${WB_PATH}${/}Favourite Bands.xlsx
    ${wsBands} =      Set Variable      ${wbBands['Bands']}
    [Return]    ${wsBands}

Save Worksheet
    [Arguments]     ${wsBands}
    ${wbBands} =   Load Workbook   ${WB_PATH}${/}Favourite Bands.xlsx
    ${wbBands['Bands']} =      Set Variable    ${wsBands}
    ${wbBands.save}



