#include "discord_rpc.h"
#include "discord_register.h"
#include <Windows.h>
#include <tlhelp32.h>

const char*games[] = {
	"BEAT",
	"CORE",
	"VOID",
	"RUNNER",
	"FATE",
	"FLUX"
};

const char*icons[] = {
	"main",
	"beat",
	"core",
	"void",
	"runner",
	"fate",
	"flux"
};

int game;

HANDLE parent;

DWORD ppid(DWORD pid)
{
	HANDLE h = NULL;
	PROCESSENTRY32 pe = { 0 };
	DWORD ppid = 0;
	pe.dwSize = sizeof(PROCESSENTRY32);
	h = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
	if (Process32First(h, &pe))
	{
		do
		{
			if (pe.th32ProcessID == pid)
			{
				ppid = pe.th32ParentProcessID;
				break;
			}
		} while (Process32Next(h, &pe));
	}
	CloseHandle(h);
	return (ppid);
}

int main(int argc, char*argv[])
{
	Discord_Initialize("565356855287873565", 0, 1, 0);

	char buffer[15], buffer2[10];
	DiscordRichPresence rpc;
	memset(&rpc, 0, sizeof(rpc));
	game = atoi(argv[1]);
	if (game < 5) {
		sprintf_s(buffer, 15, "Playing %s", games[game]);
		rpc.state = buffer;
		sprintf_s(buffer2, 10, "ico_%s", icons[game + 1]);
		rpc.smallImageKey = buffer2;
	}
	else
		rpc.state = "Using Designer";
	rpc.details = "Unnamed level";
	if (argc > 1)
		rpc.details = argv[2];
	rpc.startTimestamp = time(0);
	rpc.largeImageKey = "ico_main";
	rpc.instance = 1;
	Discord_UpdatePresence(&rpc);
	parent = OpenProcess(PROCESS_ALL_ACCESS, TRUE, ppid(GetCurrentProcessId()));
	while (1)
		if (WaitForSingleObject(parent, 200) != WAIT_TIMEOUT) {
			Discord_Shutdown();
			break;
		}
}
