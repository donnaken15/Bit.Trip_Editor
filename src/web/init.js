var mode_animation = 0,
  prevFrame, lasterror = "",
  test = false, timeline_position = 0,
  stop = false, fps, fpsInterval, startTime, now, then, elapsed,
  canvas = document.getElementById("game"), ctx = canvas.getContext("2d"),
  score, combo, multi = 1, bpm = 60, mouse = null, mouse_y = 360, file = null,
  pauseframes = 0, mode = 1,
  nether_up = 0, nether_lose = 0,
  hyper_up = 0, hyper_lose = 0,
  mega_multi = 0,  mega_lose = 0,
  c_white = make_color_rgb(255,255,255),
  hide_mouse = false, lastobjindex, autosave = false,
  sfx = "sfx\\", sfx_common = sfx+"Common\\", sfxbeat = sfx+"Beat\\",
  impact = "_PaddleImpact", mouseoutalert = false, debug = false,
  code = new XMLHttpRequest(), fname = new URL(window.location.href).searchParams.get("file"), level_directory = "", ___snd = null, volume = 0.1, objects = [];
  code.addEventListener("load", reqListener);
  code.open("GET", fname);
  // SOUNDS {
var snd_beat_miss = new Audio(sfx_common+'BeatMiss.ogg'),
  snd_pause = new Audio(sfx_common+'Pause.ogg'), snd_unpause = new Audio(sfx_common+'Unpause.ogg'),
  snd_mode_up = new Audio(sfx_common+'ModeUp.ogg'), snd_mode_down = new Audio(sfx_common+'ModeDown.ogg'),
  snd_beat_nether = new Audio(sfx_common+'N_PaddleImpact1.ogg'), oggext = ".ogg", h = 'H', m = 'M',
  snd_beat_hyper_hit = [ null,
    new Audio(sfxbeat+h+impact+1+oggext),
    new Audio(sfxbeat+h+impact+2+oggext),
    new Audio(sfxbeat+h+impact+3+oggext),
    new Audio(sfxbeat+h+impact+4+oggext),
    new Audio(sfxbeat+h+impact+5+oggext)],
  snd_beat_mega_hit = [ null,
    new Audio(sfxbeat+m+impact+1+oggext),
    new Audio(sfxbeat+m+impact+2+oggext),
    new Audio(sfxbeat+m+impact+3+oggext),
    new Audio(sfxbeat+m+impact+4+oggext)],
  snd_mode_multi = new Audio(sfx_common+'MultiUp'+oggext),
  snd_music = null, snd_music_mega = null;
  // }
  if (fname !== null)
  if (fname.includes("\\") || fname.includes("/")) {
  var j,k;
  for (j = 0; j < fname.length; j += 1) {
    if (fname.charAt(j) === "\\" || fname.charAt(j) === "/")
      k = j;
    }
  level_directory = fname.substring(0,k)+"/"; }
  if (autosave)
  {
    if (getCookie("score") !== null && getCookie("score") !== "")
      score = parseInt(getCookie("score"))
    if (getCookie("combo") !== null && getCookie("combo") !== "")
      combo = parseInt(getCookie("combo"))
    if (getCookie("multi") !== null && getCookie("multi") !== "")
      multi = parseInt(getCookie("multi"))
    if (getCookie("mouse_y") !== null && getCookie("mouse_y") !== "")
      mouse_y = parseInt(getCookie("mouse_y"))
    if (getCookie("nether_up") !== null && getCookie("nether_up") !== "")
      nether_up = parseInt(getCookie("nether_up"))
    if (getCookie("nether_lose") !== null && getCookie("nether_lose") !== "")
      nether_lose = parseInt(getCookie("nether_lose"))
    if (getCookie("hyper_up") !== null && getCookie("hyper_up") !== "")
      hyper_up = parseInt(getCookie("hyper_up"))
    if (getCookie("hyper_lose") !== null && getCookie("hyper_lose") !== "")
      hyper_lose = parseInt(("hyper_lose"))
    if (getCookie("mega_multi") !== null && getCookie("mega_multi") !== "")
      mega_multi = parseInt(getCookie("mega_multi"))
    if (getCookie("mega_lose") !== null && getCookie("mega_lose") !== "")
      mega_lose = parseInt(getCookie("mega_lose"))
  }
  if (hide_mouse)
    canvas.style += "; cursor: none"

