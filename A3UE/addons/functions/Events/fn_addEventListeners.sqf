if !(isClass (missionConfigFile/"A3A")) exitWith {};//safeguard to block running on none antistasi missions

#include "..\script_component.hpp"
FIX_LINE_NUMBERS()

// ! THE OLD WAY
// ! (DEPRECATED, WILL BE REMOVED)
//see (configFile/"A3A"/"Events") for a list of available events
//arguments are: Event type, Event Unique ID, function
["initServerComplete", QUOTE(ADDON)+"initServerComplete", EFUNC(functions,initServerComplete)] call A3A_Events_fnc_addEventListener;
["saveLoopComplete", QUOTE(ADDON)+"saveLoopComplete", EFUNC(functions,saveLoopComplete)] call A3A_Events_fnc_addEventListener;

// ! THE NEW WAY
["A3A_event_serverSpawnLocation", { // CBA_EVENT_SERVER_SPAWN_LOCATION (Macro not defined in extender)
    if !assert(params[
        ["_location", nil, [""]],
        ["_locationType", nil, [""]],
        ["_isSpawning", nil, [false]]
    ]) exitWith {};

    [_location, _locationType, _isSpawning] call EFUNC(functions,serverSpawnLocation);
}] call A3A_fnc_addEventHandler;