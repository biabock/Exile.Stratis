private ["_objectStorage", "_staticObjectTemplates"];

endLoadingScreen;
 
[] spawn {     
		waitUntil{player == player};
        /* This is the advertisement. */
        [["Welcome to CLS Exile Stratis","", format["Do Your best to survive %1", name player],"","","","","","",""," ","","","",""], -.5, .85] call BIS_fnc_typeText;
        //sleep 2;
        [["Visit Us At:","GAMING.CLSESPORTS.COM.BR","For Rules","Forums","and Donor Perks (SOON)","",""], .5, .85] call BIS_fnc_typeText;
        /* End of advertisement */
};

ExileClientIntroIsPlaying = false;

true