-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local path = system.pathForFile( "knn.csv", system.ResourceDirectory )
 

local file = io.open( path, "r" )

local data ={} 
for line in file:lines() do
    local x, y, class = line:match("%s*(.-),%s*(.-),%s*(.)")
    data[#data + 1] = { x = x, y = y, class = class }
end


io.close(file )

file = nil

for i in pairs(data) do
print ("record".." "..i.." x="..data[i].x.." y="..data[i].y.." class="..data[i].class)
end

























