
// compiles.sqf
if (!isDedicated) then {

fnc_usec_selfActions =	compile preprocessFileLineNumbers "compile\fn_selfActions.sqf";				//ZUPA COINS

BIS_fnc_numberDigits    = compile preprocessFileLineNumbers "custom\numberDigits.sqf";				//ZUPA COINS
BIS_fnc_numberText      = compile preprocessFileLineNumbers "custom\numberText.sqf";			//ZUPA COINS

//actions
player_wearClothes =		compile preprocessFileLineNumbers "compile\player_wearClothes.sqf";				//ZUPA COINS


};

		call compile preprocessFileLineNumbers "gold\player_traderMenu.sqf";						//ZUPA COINS

initialized = true;																				//ZUPA COINS	