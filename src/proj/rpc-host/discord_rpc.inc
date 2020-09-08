
include 'macro/if.inc'
include 'macro/struct.inc'

struct DiscordRichPresence
  state          db 128 dup (?)
  details        db 128 dup (?)
  startTimestamp dq ?
    endTimestamp dq ?
  largeImageKey  db 32  dup (?)
  largeImageText db 128 dup (?)
  smallImageKey  db 32  dup (?)
  smallImageText db 128 dup (?)
  partyId        db 128 dup (?)
  partySize      dd ?
  partyMax       dd ?
     matchSecret db 128 dup (?)
      joinSecret db 128 dup (?)
  spectateSecret db 128 dup (?)
  instance       db ?
ends

struct DiscordUser  ; wtf is the length of this
  userId        db ?
  userName      db ?
  discriminator db ?
  avatar        db ?
ends

struct DiscordEventHandlers
  ready         dd ? ; dont know about this
  disconnected  dd ? ; going off assumption of pointers as addrs to funcs and that
  errored       dd ? ; users need to apply args and whatever properly
  joinGame      dd ? ; and because invoking doesnt care what you put in
  spectateGame  dd ?
  joinRequest   dd ?
ends

DISCORD_REPLY_NO     = 0
DISCORD_REPLY_YES    = 1
DISCORD_REPLY_IGNORE = 2

   ; insert in your program

   ;import discord,\
   ;       Discord_Initialize,           'Discord_Initialize',             \
   ;       Discord_Shutdown,             'Discord_Shutdown',               \
   ;       Discord_RunCallbacks,         'Discord_RunCallbacks',           \
   ;     if DISCORD_DISABLE_IO_THREAD
   ;       Discord_UpdateConnection,     'Discord_UpdateConnection',       \
   ;     end if
   ;       Discord_UpdatePresence,       'Discord_UpdatePresence',         \
   ;       Discord_ClearPresence,        'Discord_ClearPresence',          \
   ;       Discord_Respond,              'Discord_Respond',                \
   ;       Discord_UpdateHandlers,       'Discord_UpdateHandlers'

   ;register.h
   ;       Discord_UpdateHandlers,       'Discord_UpdateHandlers',         \
   ;       Discord_Register,             'Discord_Register',               \
   ;       Discord_RegisterSteamGame,    'Discord_RegisterSteamGame',      \
