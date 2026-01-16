class CfgFunctions 
{
    class ADDON
    {
        class Events 
        {
            file = QPATHTOFOLDER(Events);
            class addEventListeners { postInit = 1; };
            class initServerComplete {};
            class saveLoopComplete {};
        };
    };
};
