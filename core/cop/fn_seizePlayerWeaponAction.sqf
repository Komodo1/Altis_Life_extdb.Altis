/*
        File: fn_seizePlayerWeaponAction.sqf
        Author: Skalicon
        Traduction : Skydred pour Involved-Gaming.Com
        Description:
        Removes the players weapons client side
*/
removeAllWeapons player;
license_civ_gun = false;
[] call life_fnc_saveGear;

titleText["Toutes vos armes ont été saisies.","PLAIN"];