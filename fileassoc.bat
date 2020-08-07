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
reg add HKCR\BitTripEditor.Beat\DefaultIcon /ve /d "%~dp0\icons.dll,0"
reg add HKCR\BitTripEditor.Core\DefaultIcon /ve /d "%~dp0\icons.dll,1"
reg add HKCR\BitTripEditor.Void\DefaultIcon /ve /d "%~dp0\icons.dll,2"
reg add HKCR\BitTripEditor.Runner\DefaultIcon /ve /d "%~dp0\icons.dll,3"
reg add HKCR\BitTripEditor.Fate\DefaultIcon /ve /d "%~dp0\icons.dll,4"
reg add HKCR\BitTripEditor.Flux\DefaultIcon /ve /d "%~dp0\icons.dll,5"
reg add HKCR\BitTripEditor.Beat\shell\edit\command /ve /d "\"C:\Windows\System32\notepad.exe\" \"%%1\"
reg add HKCR\BitTripEditor.Core\shell\edit\command /ve /d "\"C:\Windows\System32\notepad.exe\" \"%%1\"
reg add HKCR\BitTripEditor.Void\shell\edit\command /ve /d "\"C:\Windows\System32\notepad.exe\" \"%%1\"
reg add HKCR\BitTripEditor.Runner\shell\edit\command /ve /d "\"C:\Windows\System32\notepad.exe\" \"%%1\"
reg add HKCR\BitTripEditor.Fate\shell\edit\command /ve /d "\"C:\Windows\System32\notepad.exe\" \"%%1\"
reg add HKCR\BitTripEditor.Flux\shell\edit\command /ve /d "\"C:\Windows\System32\notepad.exe\" \"%%1\"
reg add HKCR\BitTripEditor.Beat\shell\open\command /ve /d "\"%~dp0GAME.EXE\" \"%%1\"
reg add HKCR\BitTripEditor.Core\shell\open\command /ve /d "\"%~dp0GAME.EXE\" \"%%1\"
reg add HKCR\BitTripEditor.Void\shell\open\command /ve /d "\"%~dp0GAME.EXE\" \"%%1\"
reg add HKCR\BitTripEditor.Runner\shell\open\command /ve /d "\"%~dp0GAME.EXE\" \"%%1\"
reg add HKCR\BitTripEditor.Fate\shell\open\command /ve /d "\"%~dp0GAME.EXE\" \"%%1\"
reg add HKCR\BitTripEditor.Flux\shell\open\command /ve /d "\"%~dp0GAME.EXE\" \"%%1\"