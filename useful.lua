--[[
	author: @sw1tch
]]--

function checkPlayerAdmin(oyuncu)
    local adminlevel = getElementData(oyuncu,"admin_level")
    if adminlevel > 0 then return true end 
    if adminlevel < 0 then return false end 
end 

function checkPlayerSupporter(oyuncu)
    local supportlevel = getElementData(oyuncu,"supporter_level")
    if supportlevel > 0 then return true end 
    if supportlevel < 0 then return false end 
end 

function checkPlayerStaff(oyuncu)
    local adminlevel = getElementData(oyuncu,"admin_level")
    local supportlevel = getElementData(oyuncu,"supporter_level")
    if adminlevel > 0 or supportlevel > 0 then return true end 
    if adminlevel < 0 or supportlevel < 0 then return false end 
end 


-- Kullanım Örneği

function use(player)
    if checkPlayerStaff(player) == true then return print("yetkilisin") end
end 
