
// fn_selfActions.sqf
private ["_typeOfCursorTarget","_player_studybody"];

//----------------  ZUPA Coins ------------------
	player removeAction s_givemoney_dialog;
	s_givemoney_dialog = -1;
	player removeAction s_bank_dialog;
	s_bank_dialog = -1;
	player removeAction s_bank_dialog2;
	s_bank_dialog2 = -1;
	_player_studybody = false;
//----------------  ZUPA Coins ------------------



//----------------  ZUPA Coins modified ------------------
// Study Body
	if (_player_studybody) then {
		if (s_player_studybody < 0) then {
		 // --------ZUPA - Check Wallet --------
				s_player_studybody = player addAction [("<t color=""#FF0000"">"+("Check Wallet") + "</t>"), "gold\check_wallet.sqf",_cursorTarget, 0, false, true, "",""];
			// ---- ZUPA END ---
		};
	} else {
		player removeAction s_player_studybody;
		s_player_studybody = -1;
	};
//----------------  ZUPA Coins modified ------------------


//----------------  ZUPA Coins ------------------
   		//banking FROM HERE

	if(_typeOfCursorTarget in DZE_UnLockedStorage and (player distance _cursorTarget < 3)) then {
		if (s_bank_dialog < 0) then {
				s_bank_dialog = player addAction ["Online Banking", "gold\bank_dialog.sqf",_cursorTarget, 3, true, true, "", ""];
		};
	} else {
     	player removeAction s_bank_dialog;
		s_bank_dialog = -1;
	};

	// banking atm

	if(_typeOfCursorTarget in DZE_ATM  and (player distance _cursorTarget < 3)) then {
		if (s_bank_dialog2 < 0) then {
			s_bank_dialog2 = player addAction ["Bank ATM", "gold\bank_dialog.sqf",_cursorTarget, 3, true, true, "", ""];
		};
	} else {
		player removeAction s_bank_dialog2;
		s_bank_dialog2 = -1;
	};
	//Above the following line.

	//Allow owner to pack vault
//----------------  ZUPA Coins ------------------



//----------------  ZUPA Coins ------------------
//Above the following line

//Fuel Pump


// put the following


if (_isMan and _isAlive and !_isZombie and !_isAnimal and !(_traderType in serverTraders)) then {
    if (s_givemoney_dialog < 0) then {
        s_givemoney_dialog = player addAction [format["Give Money to %1", (name _cursorTarget)], "gold\give_player_dialog.sqf",_cursorTarget, 3, true, true, "", ""];
    };
} else {
    player removeAction s_givemoney_dialog;
    s_givemoney_dialog = -1;
};
//----------------  ZUPA Coins ------------------