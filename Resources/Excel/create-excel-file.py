from openpyxl import Workbook

wbBandBook = Workbook()

wsBands = wbBandBook.active
wsBands.title = "Bands"

wsBands['A1'] = "Fave 1"
wsBands['B1'] = "Fave 2"
wsBands['C1'] = "Fave 3"
wsBands['D1'] = "Recommended"

wsBands['A2'] = "Hidden Citizens"
wsBands['B2'] = "Unsecret"
wsBands['C2'] = "Les Friction"

wsBands['A3'] = "Atreyu"
wsBands['B3'] = "The Used"
wsBands['C3'] = "Starset"

wsBands['A4'] = "Two Steps from Hell"
wsBands['B4'] = "Globus"
wsBands['C4'] = "Thomas Bergersen"

wbBandBook.save(filename = "C:\\Users\\rf_admin\\Documents\\Robot_Repos\\workshop\\Resources\\Excel\\Favourite Bands.xlsx")