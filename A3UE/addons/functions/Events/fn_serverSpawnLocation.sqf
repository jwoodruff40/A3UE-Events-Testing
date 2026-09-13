#include "..\script_component.hpp"

params ["_location", "_locationType", "_isSpawning"];
private _message = format ["This message was triggered by the serverSpawnLocation event. Location: %1, Location Type: %2, Is Spawning: %3", _location, _locationType, _isSpawning];
systemChat _message;
Info(_message);
