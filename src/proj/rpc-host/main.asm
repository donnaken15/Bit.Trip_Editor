
 format PE console 3.1

 use16
 align 100h
 heap 0
 stack 0

 include 'win32a.inc'
 include 'discord_rpc.inc'

 section '' code data readable executable writeable shareable discardable notpageable
   invoke Discord_Initialize, id, 0, 1, 0
   ;invoke GetCommandLineA
   ;mov    [game], eax
   ; GET NUMBERED ARGUMENT FFS
   main:
     ;invoke puts,games
     ;invoke printf,testa,[game]
     mov [pres.details],deta ; why isnt this workign
     invoke Discord_UpdatePresence,[pres]
     invoke Sleep,1000
     jmp    main
   stop:
     invoke Discord_Shutdown
     invoke ExitProcess, 0

 games db 'BEAT',0,0,0,0,\
          'CORE',0,0,0,0,\
          'VOID',0,0,0,0,\
          'RUNNER'  ,0,0,\
          'FATE',0,0,0,0,\
          'FLUX',0,0,0,0

 icons db 'main',0,0,0,0,\
          'beat',0,0,0,0,\
          'core',0,0,0,0,\
          'void',0,0,0,0,\
          'runner'  ,0,0,\
          'fate',0,0,0,0,\
          'flux',0,0,0,0

 id   db '565356855287873565',0
 game dd 0
 deta db 'Bit . Trip Test',0
 ;testa db 'asd%d',$A,0
 pres DiscordRichPresence ?

 section '' import data readable writeable
   library kernel,    'KERNEL32.DLL',\
           discord,   'discord-rpc.dll',\
           msvcrt,    'msvcrt.dll'
   import kernel,\
          ExitProcess,       'ExitProcess',\
          GetCommandLineA,   'GetCommandLineA',\
          Sleep,             'Sleep'
   import discord,\
          Discord_Initialize,       'Discord_Initialize',\
          Discord_UpdatePresence,   'Discord_UpdatePresence',\
          Discord_Shutdown,         'Discord_Shutdown'
   import msvcrt,\
          puts,   'puts',\
          printf, 'printf'
