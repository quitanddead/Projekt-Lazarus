private ["_body", "_hisMoney", "_myMoney", "_killsH", "_test2", "_headShots", "_test","_playeridke","_humanity"];
_body = _this select 3;
_name = _body getVariable ["bodyName","unknown"];
_hisMoney = _body getVariable ["headShots",0];
_myMoney = player getVariable ["headShots",0];
_myMoney = _myMoney + _hisMoney;
_body setVariable ["headShots", 0 , true];
player setVariable ["headShots", _myMoney , true];

systemChat format ['You took %1 coins, ID says %2 !',_hisMoney,_name];
sleep 2;

_cid =	player getVariable ["CharacterID","0"];

_headShotsZupa = player getVariable ["headShots",0];


			if(_headShotsZupa > 0) then{
				
				}else{
				_headShotsZupa = 0;
				};

player setVariable ["moneychanged",1,true];	