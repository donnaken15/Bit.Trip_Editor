function popup() {
    if (!window.opener)
      window.open(window.location.href, "_blank", "width=640,height=480,location=0,menubar=0,scrollbars=0,status=0,toolbar=0");
  }
  function sound_play(inst) {
    ___snd = inst.cloneNode(true)
    ___snd.volume = volume
    ___snd.play()
  }
  function room_restart() {
    score = 0
	timeline_position = 0
	if (fname !== null)
    code.send();
	else
	  file = [""];
  }
  function pause(frames) {
    pauseframes = frames;
  }
  function beat_beat(arg0 = 0,arg1 = null,arg2 = null,arg3 = null,arg4 = null,arg5 = null,arg6 = null,arg7 = null,arg8 = null,arg9 = null,arg10 = null,arg11 = null,arg12 = null,arg13 = null,arg14 = null,arg15 = null)
  {
  }
  function make_color_rgb(r,g,b)
  {
	return "rgb("+r+", "+g+", "+b+")";
	//return r+(g*256)+(b*256*256);
  }
  function set_bg_color(color)
  {
	canvas.style = "background-color: "+color
  }
  function gmlToJs(code)
  {
    return code.replace(/([A-Z]+=\b)+\+?\d+/gi, "$&;").replace(/\(+([^()]*|\([^()]*\))*\)+/gi, "$&;").replace(/\;+/gi, ";").replace(/if(.*?)(?={.*|\)\s*\w*\W*[;\n\{])/mgi, "if ($1)");
  }
  function reqListener () {
    file = gmlToJs(this.responseText).split("\n",-1);
  }
  function fire( elem, type ) {
    var evt = elem.createEvent("Events");
    evt.initEvent( type, true, true, window, 1);
    elem.dispatchEvent( evt );
  }
  function startAnimating(fps) {
    fpsInterval = 1000 / fps;
    then = Date.now();
    startTime = then;
    draw();
  }
  function debug()
  {
    eval(location.hash.substr(1));
  }
  function music(path)
  {
    console.log("PLAYING "+path);
    snd_music = new Audio(path);
	  snd_music.play();
  }
  function skip(frameselect)
  {
    timeline_position = frameselect;
  }
  function rand(min, max) {
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min + 1)) + min;
    }
  function getCookie(cname) {
    var name = cname + "=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split(';');
    for(var i = 0; i <ca.length; i++) {
      var c = ca[i];
      while (c.charAt(0) == ' ') {
        c = c.substring(1);
      }
      if (c.indexOf(name) == 0) {
        return c.substring(name.length, c.length);
      }
    }
    return "";
  }
  function keys(event) {
  	if (document.activeElement.type !== "textarea")
    switch(event.which || event.keyCode)
	{
	  case 92:
	    try {
	    eval(window.prompt("Enter code","")); }
		catch (e) { alert(e.message); }
	    break
	  case 13:
        sound_play(snd_pause)
	    //new Audio('SFX\\Common\\Pause.ogg').play()
		setTimeout(function(){
		if (snd_music !== null) snd_music.pause()
		alert("Paused")
        if (snd_music !== null) snd_music.play()
        sound_play(snd_unpause)},5);
		//new Audio('SFX\\Common\\Unpause.ogg').play()
		break
	  case 115:
	    room_restart();
	    break
	  case 45:
		if (mode > 0)
	    sound_play(snd_beat_miss)
		switch (mode)
		{ case 0:
		nether_lose += 1
		break
		case 1:
		hyper_lose += 1
		if (hyper_lose >= 14) { mode -= 1; sound_play(snd_mode_down); }
		break
		case 2:
		mega_lose += 1
		break
		}
		combo = 0
		break
	  case 61:
		combo += 1
		//if (mode > 0) sound_play(snd_beat_hyper_hit[rand(1,5)]);
		switch (mode)
		{ case 0:
		nether_up += 1
	    sound_play(snd_beat_nether)
		break
		case 1:
		hyper_up += 1
		if (hyper_up >= 80) { mode += 1; sound_play(snd_mode_up); }
		sound_play(snd_beat_hyper_hit[rand(1,5)])
		break
		case 2:
		mega_multi += 1
		sound_play(snd_beat_mega_hit[rand(1,4)])
		break }
		score += 100 * multi
		if (combo > 9)
		score += combo * multi
	    break
	  case 93:
		if (mode === 2)
		{ multi += 1; sound_play(snd_mode_multi) }
	    if (mode < 2)
	    { mode += 1; sound_play(snd_mode_up); mega_multi = 0; mega_lose = 0;
		nether_up = 0; nether_lose = 0; hyper_up = 0; hyper_lose = 0; }
		break
	  case 91:
	    if (mode > 0)
		{ mode -= 1; multi = 1; hyper_up = 0; hyper_lose = 0; nether_up = 0; nether_lose = 0; sound_play(snd_mode_down) }
		break
      default:
	    //alert(event.which || event.keyCode)
	    break
	  }
  }
  