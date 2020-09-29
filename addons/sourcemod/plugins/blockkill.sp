#include <sourcemod>

public Plugin myinfo =
{
	name = "Kill Command Block",
	author = ".sneaK",
	description = "Blocks players from forcing suicide",
	version = "1.0",
	url = "https://snksrv.com"
}

public void OnPluginStart()
{
	AddCommandListener(Command_BlockKill, "kill");
	AddCommandListener(Command_BlockKill, "killvector");
	AddCommandListener(Command_BlockKill, "explode");
	AddCommandListener(Command_BlockKill, "explodevector");
}

public Action Command_BlockKill(int client, const char[] command, int argc)
{
	return Plugin_Handled;
}