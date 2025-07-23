enableSaving [false, false];
"respawn_west" setMarkerAlpha 0;
"respawn_civilian" setMarkerAlpha 0;

[AmmoBox_West] call RGT_fnc_AmmoBoxWest;
[AmmoBox_East] call RGT_fnc_AmmoBoxEast;
[MedBox] call RGT_fnc_MedBox;
[ScopeBox] call RGT_fnc_ScopeBox;
[SupportBox] call RGT_fnc_SupportBox;
[ExplosiveBox] call RGT_fnc_ExplosiveBox;
[BarbieBox] call RGT_fnc_BarbieBox;