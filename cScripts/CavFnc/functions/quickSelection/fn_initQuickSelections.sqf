/*
 * Author: CPL.Brostrom.A 
 * This adds a quick selection loadout for a CavBox Used by InitMain and InitMainSandbox
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_initQuickSelections;
 */

#include "..\script_component.hpp";

params [["_object", objNull, [objNull]]];

// make ACE category
private _Icon = "cScripts\Data\Icon\icon_00.paa";
private _quickSelectionMenu = ["cScriptQuickSelectionMenu", "Quick Selection", _Icon, {""}, {true}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _quickSelectionMenu] call ace_interact_menu_fnc_addActionToObject;

// make addAction Topic
_object addAction ["Quick Selection", {}];

// make Quick Selections
[_object,"Rifleman","CAV_Rifleman"] call FUNC(addQuickSelection);
[_object,"Rifleman LAT","CAV_RiflemanLAT"] call FUNC(addQuickSelection);
[_object,"Rifleman AT","CAV_RiflemanAT"] call FUNC(addQuickSelection);
[_object,"Rifleman AA","CAV_RiflemanAA"] call FUNC(addQuickSelection);
[_object,"Rifleman M-AR Assistant","CAV_RiflemanAmmoBearerMAR"] call FUNC(addQuickSelection);
[_object,"Rifleman H-AR Assistant","CAV_RiflemanAmmoBearerHAR"] call FUNC(addQuickSelection);
[_object,"Rifleman Ammo Bearer","CAV_RiflemanAmmoBearer"] call FUNC(addQuickSelection);