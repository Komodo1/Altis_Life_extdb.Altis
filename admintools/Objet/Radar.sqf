detach DeplaceObjet; 
player removeAction ActionDeplaceObjet;
PauserObjet = 0;
DeplaceObjet = "Land_PowerGenerator_F" createVehicle (position player);
DeplaceObjet setObjectTexture [0, Textures\\power_gen_co.jpg"];
DeplaceObjet addEventHandler ["init", 'nul = [this,45,50,{[_this select 0, _this select 1, _this select 2] execVM "Flash.sqf"; }] execVM "speedradar.sqf";'];

DeplaceObjet setDir _DirPlayer;

_bbr = boundingBoxReal DeplaceObjet; 
_p1 = _bbr select 0; 
_p2 = _bbr select 1;
 _maxWidth = abs ((_p2 select 0) - (_p1 select 0)); 
 _maxLength = abs ((_p2 select 1) - (_p1 select 1)); 
 _maxHeight = abs ((_p2 select 2) - (_p1 select 2));
DeplaceObjet allowDamage false; 
DeplaceObjet attachTo [player,[0,_maxLength + 1 ,_maxHeight / 2], ""];
ActionDeplaceObjet = player addaction ["Pauser",{PauserObjet = 1},""];

waituntil {PauserObjet ==1};

if (PauserObjet == 1) exitWith {detach DeplaceObjet; player removeAction ActionDeplaceObjet};









