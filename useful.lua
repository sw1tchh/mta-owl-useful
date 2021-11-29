--[[
	author: @sw1tch
]]--

function checkPlayerAdminLevel(player,level)
	local level = tonumber(level)
	local a_level = getElementData(player,"admin_level")
	
	if not level then 
		if a_level > 0 then 
			return true 
		else 
			return false 
		end 
	return end 
	
	if a_level == level then 
		return true 
	else 
		return false  
	end 
	
end 

function checkPlayerSupporterLevel(player,level)
	local level = tonumber(level)
	local s_level = getElementData(player,"supporter_level")
	
	if not level then 
		if s_level > 0 then 
			return true 
		else 
			return false 
		end 
	return end 
	
	if s_level == level then 
		return true
	else 
		return false 
	end 
	
end 

-- Kullanım Örneği

function use(oyuncu,cmd)

	if checkPlayerAdminLevel(oyuncu,2) == true then
		outputChatBox("Admin Level'in 2'ye eşit.", oyuncu)
	else 
		outputChatBox("Admin Level'in 2'ye eşit değil", oyuncu)
	end 
	
	if checkPlayerSupporterLevel(oyuncu,1) == true then 
		outputChatBox("Supporter levelin 1'e eşit.", oyuncu)
	else 
		outputChatBox("Supporter levelin 1'e eşit değil", oyuncu)
	end 
	
	if checkPlayerAdminLevel(oyuncu) == true then 
		outputChatBox("Adminsin.", oyuncu)
	else 
		outputChatBox("Admin değilsin.",oyuncu)
	end 
	
	if checkPlayerSupporterLevel(oyuncu) == true then 
		outputChatBox("Supportersın", oyuncu)
	else 
		outputChatBox("Supporter değilsin.",oyuncu)
	end 
	
end 
addCommandHandler("test", use)
