"respawn_west" setMarkerAlpha 0;
"respawn_civilian" setMarkerAlpha 0;

AmmoBox_West call RGT_fnc_AmmoBoxWest;
AmmoBox_East call RGT_fnc_AmmoBoxEast;
MedBox call RGT_fnc_MedBox;
ScopeBox call RGT_fnc_ScopeBox;
SupportBox call RGT_fnc_SupportBox;
ExplosiveBox call RGT_fnc_ExplosiveBox;
BarbieBox call RGT_fnc_BarbieBox;

{
    if (["VicWest_", _x] call BIS_fnc_inString) then {
        private _v = missionNamespace getVariable [_x, objNull];
        if (!isNull _v) then {
            [_v] call RGT_fnc_ResupplyWest;
        };
    };
    if (["VicEast_", _x] call BIS_fnc_inString) then {
        private _v = missionNamespace getVariable [_x, objNull];
        if (!isNull _v) then {
            [_v] call RGT_fnc_ResupplyEast;
        };
    };
} forEach allVariables missionNamespace;