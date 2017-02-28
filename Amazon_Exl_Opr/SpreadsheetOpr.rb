require 'spreadsheet'
#require_relative 'spreadsheet'
#require '../Amazon_TestData/TestData'
#sheetloc='C:\Ruby23\bin\rubyselenium_poc\Amazon_TestData'
def readsheet(i,j,k)
    sheetloc='C:\Ruby23\bin\rubyselenium_poc\Amazon_TestData\TestData.xls'
doc = Spreadsheet.open(sheetloc)
sheet = doc.worksheet(i)  # list number, first list is 0 and so on...
val = sheet[j,k] # read particular cell from list 0, r for row, c for column 
return val
end
