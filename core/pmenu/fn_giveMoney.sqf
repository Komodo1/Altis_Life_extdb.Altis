/*
	File: fn_giveMoney.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Gives the selected amount of money to the selected player.
*/
private["_unit","_amount"];
_amount = ctrlText 2018;
ctrlShow[2001,false];
if((lbCurSel 2022) == -1) exitWith {hint "Personne a été sélectionné";ctrlShow[2001,true];};
_unit = lbData [2022,lbCurSel 2022];
_unit = call compile format["%1",_unit];
if(isNil "_unit") exitWith {ctrlShow[2001,true];};
if(_unit == player) exitWith {ctrlShow[2001,true];};
if(isNull _unit) exitWith {ctrlShow[2001,true];};

//A series of checks *ugh*
if(!life_use_atm) exitWith {hint "tu viens juste de braquer la banque, impossible.";ctrlShow[2001,true];};
if(!([_amount] call fnc_isnumber)) exitWith {hint "Tu n'as pas mis un vrai nombre.";ctrlShow[2001,true];};
if(parseNumber(_amount) <= 0) exitWith {hint "Tu dois indiquer un nombre d'objet a donner.";ctrlShow[2001,true];};
if(parseNumber(_amount) > life_liquide) exitWith {hint "Tu n'as pas assez d'objets a donner?";ctrlShow[2001,true];};
if(isNull _unit) exitWith {ctrlShow[2001,true];};
if(isNil "_unit") exitWith {ctrlShow[2001,true]; hint "Le joueur est hors de porter";};
hint format["Tu as donné $%1 a %2",[(parseNumber(_amount))] call life_fnc_numberText,_unit getVariable["realname",name _unit]];
life_liquide = life_liquide - (parseNumber(_amount));
[] call SOCK_fnc_updateRequest;
[[_unit,_amount,player],"life_fnc_receiveMoney",_unit,false] spawn life_fnc_MP;
[] call life_fnc_p_updateMenu;

ctrlShow[2001,true];
