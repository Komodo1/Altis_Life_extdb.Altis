onEachFrame {
        //_l49 = nearestobjects[player, ["CAManBase"], 1400];
        yo = 0;
        o = 0;
        {
            if ((player != _x) && (vehicle _x != _x) && (alive _x) && ((player distance _x) <= 3000) && (_x getVariable "FAR_isUnconscious" == 1)) then {//player in vehicle
                drawIcon3D["", [1, 0, 0, 1], [visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2], 0.1, 0.1, 45, (format["%2 : %1 m", round(player distance _x), name (driver  _x)]), 1, 0.04, "TahomaB"]
            } else {
                if ((player != _x) && (alive _x) && ((player distance _x) >= 10) && (_x getVariable "FAR_isUnconscious" == 1)) then {//player
                	if(((player distance _x) <= 500)) then {
                    	drawIcon3D["", [0.267,0.757,0.204,1], [visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2], 0.1, 0.1, 45, (format["%2 : %1 m", round(player distance _x), name _x]), 1, 0.04, "TahomaB"]
                    } else {
                    	drawIcon3D["", [0, 0.5, 1, 1], [visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2], 0.1, 0.1, 45, (format["%2 : %1 m", round(player distance _x), name _x]), 1, 0.04, "TahomaB"]
                	};
                };
            };

	        if ((isPlayer _x) && (alive _x)) then
			{
				deleteMarkerLocal ("Player" + (str o));
				yo = o + 1;
				deleteMarkerLocal ("Player" + (str yo));

				namePlayer = "";
				namePlayer = name _x;

				mark_player = "Player" + (str o); //Player0, Player1, Player2
				mark_player = createMarkerLocal [mark_player,(getPos _x)];
				mark_player setMarkerTypeLocal "waypoint";
				mark_player setMarkerPosLocal (getPos _x);
				mark_player setMarkerColorLocal "ColorBlue";
				mark_player setMarkerTextLocal format ["%1",namePlayer];
				o = o +1;
			};
        }foreach playableUnits;
    };