// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 100; // bow
global.__objectDepths[1] = 0; // arrow
global.__objectDepths[2] = -100; // player
global.__objectDepths[3] = 0; // enemy
global.__objectDepths[4] = 0; // aim
global.__objectDepths[5] = 10000; // direc
global.__objectDepths[6] = 0; // control


global.__objectNames[0] = "bow";
global.__objectNames[1] = "arrow";
global.__objectNames[2] = "player";
global.__objectNames[3] = "enemy";
global.__objectNames[4] = "aim";
global.__objectNames[5] = "direc";
global.__objectNames[6] = "control";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for