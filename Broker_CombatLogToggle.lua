--[[
Name: Broker_CombatLogToggle\Broker_CombatLogToggle.lua

Description: Toggles the combatlog frame

Copyright 2008 Quaiche

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
]]

LibStub("LibDataBroker-1.1"):NewDataObject("CombatLogToggle", {
	type = "launcher",
	icon = [[Interface\Icons\INV_Weapon_ShortBlade_01]],
	OnClick = function()
		if not COMBATLOG then 
			DEFAULT_CHAT_FRAME:AddMessage("ERROR - COMBATLOG frame does not exist.")
			return
		end
		if COMBATLOG:IsVisible() then
			COMBATLOG:Hide()
		else
			COMBATLOG:Show()
		end
	end
})
