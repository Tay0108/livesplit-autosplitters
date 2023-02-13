// There is one bug in this splitter - if you check mission info during 1st mission (why would you if you are speedrunning :D) 
// then timer will restart after you go back to the game. Other than that it should work.

state("Stronghold", "V1.41")
{
	int victory: 0x639CF4;
    int selectedMission: 0x10B4160;
    int inGame: 0x10B41B0;
}

start
{
    if (current.selectedMission == 1 && old.inGame == 0 && current.inGame == 1) return true;
}

split
{
	if (old.victory == 0 && current.victory == 1) return true;
}

reset
{
    if (current.selectedMission == 1 && old.inGame == 0 && current.inGame == 1) return true;
}