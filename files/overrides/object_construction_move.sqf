/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_object","_result"];
disableSerialization;
_object = _this select 0;
_result = ["Do you really want to move this object?", "Move?", "Yes", "Nah"] call BIS_fnc_guiMessage;
waitUntil { !isNil "_result" };
if( _result)then
{
	if (ExileClientPlayerIsInCombat) then
	{
		["ConstructionAbortedCombat"] call BIS_fnc_showNotification;
		false
	}
	else
	{
		["moveConstructionRequest",[netId _object]] call ExileClient_system_network_send;
		true
	};
};
true