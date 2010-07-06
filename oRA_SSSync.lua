if select(2, UnitClass("player")) ~= "WARLOCK" then return end
local oRA_SSSync = CreateFrame("Frame")
oRA_SSSync:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
oRA_SSSync:SetScript("OnEvent", function(self, event, timestamp, eventType, sourceGUID, sourceName, sourceFlags, destGUID, destName, destFlags, ...)
	if sourceGUID == UnitGUID("player") and eventType == "SPELL_CAST_SUCCESS" and arg9 == 6203 then
	SendAddonMessage("oRA", "CD 3 15","RAID",true)
	SendAddonMessage("oRA3", "^1^SCooldown^N6203^N900^^", "RAID")
	end
end)
