if !(isClass (missionConfigFile/"A3A")) exitWith {};//safeguard to block running on none antistasi missions

#include "..\script_component.hpp"
FIX_LINE_NUMBERS()

//see (configFile/"A3A"/"Events") for a list of available events
//arguments are: Event type, Event Unique ID, function
["initServerComplete", QUOTE(ADDON)+"initServerComplete", EFUNC(functions,initServerComplete)] call A3A_Events_fnc_addEventListener;
["saveLoopComplete", QUOTE(ADDON)+"saveLoopComplete", EFUNC(functions,saveLoopComplete)] call A3A_Events_fnc_addEventListener;