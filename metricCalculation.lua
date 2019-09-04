-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local sampleData ={} 

local path = system.pathForFile( "knn.csv", system.ResourceDirectory )
 
local file, errorString = io.open( path, "r" )

if not file then
	print("File error: ".. errorString)
end

for line in file:lines() do
    local x, y, class = line:match("%s*(.-),%s*(.-),%s*(.)")
    sampleData[#sampleData + 1] = { x = x, y = y, class = class }
end


io.close(file )

file = nil



























