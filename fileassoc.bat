rem lmao kid try to learn how to registry on mac
rem and then he said "okay xd" - wesley

rem didnt test okay dont yell at me except you cant
rem read this unless you open this freaking thing

rem i hate my computer

rem oh yeah also forgot i left in PATH for people to write, screw this method V
rem rem -f to import, otherwise, add programmatically

rem if "%1"=="-f" goto :import

rem programmatic:
reg add HKCR\.btb /ve /d BitTripEditor.Beat
reg add HKCR\.btc /ve /d BitTripEditor.Core
reg add HKCR\.btv /ve /d BitTripEditor.Void
reg add HKCR\.btr /ve /d BitTripEditor.Runner
reg add HKCR\.btf /ve /d BitTripEditor.Fate
reg add HKCR\.btz /ve /d BitTripEditor.Flux
reg add HKCR\BitTripEditor.Beat /ve /d "Bit . Trip Beat Level"
reg add HKCR\BitTripEditor.Core /ve /d "Bit . Trip Core Level"
reg add HKCR\BitTripEditor.Void /ve /d "Bit . Trip Void Level"
reg add HKCR\BitTripEditor.Runner /ve /d "Bit . Trip Runner Level"
reg add HKCR\BitTripEditor.Fate /ve /d "Bit . Trip Fate Level"
reg add HKCR\BitTripEditor.Flux /ve /d "Bit . Trip Flux Level"
reg add HKCR\BitTripEditor.Beat\DefaultIcon /ve /d "PATH\\icons.dll,0"
reg add HKCR\BitTripEditor.Core\DefaultIcon /ve /d "PATH\\icons.dll,1"
reg add HKCR\BitTripEditor.Void\DefaultIcon /ve /d "PATH\\icons.dll,2"
reg add HKCR\BitTripEditor.Runner\DefaultIcon /ve /d "PATH\\icons.dll,3"
reg add HKCR\BitTripEditor.Fate\DefaultIcon /ve /d "PATH\\icons.dll,4"
reg add HKCR\BitTripEditor.Flux\DefaultIcon /ve /d "PATH\\icons.dll,5"
reg add HKCR\BitTripEditor.Beat\shell\edit\command /ve /d "\"C:\\Windows\\System32\\notepad.exe\" \"%1\"
reg add HKCR\BitTripEditor.Core\shell\edit\command /ve /d "\"C:\\Windows\\System32\\notepad.exe\" \"%1\"
reg add HKCR\BitTripEditor.Void\shell\edit\command /ve /d "\"C:\\Windows\\System32\\notepad.exe\" \"%1\"
reg add HKCR\BitTripEditor.Runner\shell\edit\command /ve /d "\"C:\\Windows\\System32\\notepad.exe\" \"%1\"
reg add HKCR\BitTripEditor.Fate\shell\edit\command /ve /d "\"C:\\Windows\\System32\\notepad.exe\" \"%1\"
reg add HKCR\BitTripEditor.Flux\shell\edit\command /ve /d "\"C:\\Windows\\System32\\notepad.exe\" \"%1\"
reg add HKCR\BitTripEditor.Beat\shell\open\command /ve /d "\"%~dp0\\GAME.EXE\" \"%1\"
reg add HKCR\BitTripEditor.Core\shell\open\command /ve /d "\"%~dp0\\GAME.EXE\" \"%1\"
reg add HKCR\BitTripEditor.Void\shell\open\command /ve /d "\"%~dp0\\GAME.EXE\" \"%1\"
reg add HKCR\BitTripEditor.Runner\shell\open\command /ve /d "\"%~dp0\\GAME.EXE\" \"%1\"
reg add HKCR\BitTripEditor.Fate\shell\open\command /ve /d "\"%~dp0\\GAME.EXE\" \"%1\"
reg add HKCR\BitTripEditor.Flux\shell\open\command /ve /d "\"%~dp0\\GAME.EXE\" \"%1\"

rem exit /b

rem :import
rem reg import fileassoc.reg
