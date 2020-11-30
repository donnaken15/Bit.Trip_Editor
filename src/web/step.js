  function draw() {
    requestAnimationFrame(draw);
    now = Date.now();
    elapsed = now - then;
    if (elapsed > fpsInterval) {
      then = now - (elapsed % fpsInterval);
		if (mouse !== null)
		{
		  mouse_y = mouse.clientY * (720/window.innerHeight);
		  if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) && mouse.touches[0] !== undefined )
		    mouse_y = mouse.touches[0].clientY * (720/window.innerHeight);
		}
		if (mode === 0 && mode_animation > -720) mode_animation -= 48
		if (mode === 1 && mode_animation < 0) mode_animation += 48
		if (mode === 1 && mode_animation > 0) mode_animation -= 48
		if (mode === 2 && mode_animation < 720) mode_animation += 48	
		ctx.imageSmoothingEnabled = false;
	  ctx.clearRect(0, 0, canvas.width, canvas.height);
		if (mode_animation < 0) {
      ctx.beginPath();
		  ctx.fillStyle = "#000";
      ctx.rect(0, 720+mode_animation, 1280, 720);
		  ctx.fill();
      ctx.closePath();
      ctx.beginPath();
		  ctx.fillStyle = "#FFFFFF";
      ctx.rect(78, 104+720+mode_animation, 1141, 16);
		  ctx.rect(78, 600+720+mode_animation, 1141, 16);
		  ctx.fill();
      ctx.closePath(); }
		if (mode_animation > -720 && mode_animation < 720) {
      ctx.beginPath();
		  ctx.fillStyle = "#F7D800";
      ctx.rect(78, 104+mode_animation, 1141, 16);
		  ctx.rect(78, 600+mode_animation, 1141, 16);
		  ctx.rect(1203, 56+mode_animation, 16, 48);
		  ctx.rect(1172, 56+mode_animation, 31, 16);
		  ctx.rect(1203, 616+mode_animation, 16, 48);
		  ctx.rect(1172, 648+mode_animation, 31, 16);
		  ctx.fill();
      ctx.closePath(); }
		if (mode_animation > 0) {
      ctx.beginPath();
		  ctx.fillStyle = "#F7D800";
      ctx.rect(78, 104-720+mode_animation, 1141, 16);
		  ctx.rect(78, 600-720+mode_animation, 1141, 16);
		  ctx.rect(1203, 56-720+mode_animation, 16, 48);
		  ctx.rect(1172, 56-720+mode_animation, 31, 16);
		  ctx.rect(1203, 616-720+mode_animation, 16, 48);
		  ctx.rect(1172, 648-720+mode_animation, 31, 16);
		  ctx.fill();
      ctx.closePath(); }
		if (hyper_up > 0) {
		  ctx.beginPath();
		  ctx.fillStyle = "#009600";
		  ctx.rect(79, 105+mode_animation, (1139*((hyper_up/75*(hyper_up<=75))))+(1139*(hyper_up>75)), 14);
		  if (hyper_up > 75) {
		    ctx.rect(1204, 105+mode_animation, 14, (-48*(((hyper_up-75)/3)*(hyper_up<=78)))+(-48*(hyper_up>78)));
		    ctx.rect(1204, 57+mode_animation, (-31*((((hyper_up-78)/2)*(hyper_up>=78&&hyper_up<80))))+(-31*(hyper_up>79)), 14); }
		  ctx.fill();
		  ctx.closePath(); }
    ctx.beginPath();
		if (mode_animation>=-360) ctx.fillStyle = "#FCA500";
		else ctx.fillStyle = "#FFFFFF";
		ctx.rect(62, ((mouse_y-32)*(mouse_y<584)*(mouse_y>135))+(104*(mouse_y<=135))+(552*(mouse_y>=584)), 16, 64);
		ctx.fill();
    ctx.closePath();
		/*ctx.font = "8px 'BIT.TRIP Small'";
		ctx.fillStyle = "white";
		ctx.fillText("FRAME: "+timeline_position+" RES: "+window.innerWidth+"X"+window.innerHeight+" PAUSETIME: "+pauseframes, 6, 16);
		ctx.fillStyle = "red";
		ctx.fillText("ERROR: "+lasterror, 6, 16);*/
		ctx.font = "48px 'BIT.TRIP Small'";
		if (mode_animation > -720 && mode_animation < 720) {
		  ctx.fillStyle = "#3aa6aa";
		  ctx.fillText((score).pad(10), 80, 92+mode_animation);
		  ctx.fillText("X", 288, 680+mode_animation);
      ctx.fillStyle = "lime";
		  ctx.fillText("MEGA", 915, 92+mode_animation);
		  ctx.fillStyle = "#ACAABF";
		  ctx.fillText("NETHER", 803, 680+mode_animation);
		  ctx.fillStyle = "#dc6aa5";
		  if (combo > 9) ctx.fillText((combo+100).pad(4), 80, 680+mode_animation);
		    else ctx.fillText("0100", 80, 680+mode_animation);
		  ctx.fillStyle = "#FCA500";
		  ctx.fillText((multi).pad(4), 353, 680+mode_animation); }
		if (mode_animation > 0) {
		  ctx.fillStyle = "#ff0000";
		  ctx.fillText((score).pad(10), 80, 92-720+mode_animation);
		  ctx.fillText("X", 288, 680-720+mode_animation);
      ctx.fillStyle = "#ffff00";
		  ctx.fillText("MULTI+", 803, 92-720+mode_animation);
		  ctx.fillStyle = "#00ff00";
		  ctx.fillText("HYPER", 859, 680-720+mode_animation);
		  ctx.fillStyle = "#00ffff";
		  if (combo > 9) ctx.fillText((combo+100).pad(4), 80, 680-720+mode_animation);
		    else ctx.fillText("0100", 80, 680-720+mode_animation);
		  ctx.fillStyle = "#0000ff";
		  ctx.fillText((multi).pad(4), 353, 680-720+mode_animation); }
    prevFrame = performance.now();
		//if (timeline_position === 0)
		  //eval(file[timeline_position]);
		if (timeline_position < file.length)
		  try { if (pauseframes === 0) eval(file[timeline_position]); }
		  catch (e) { lasterror = "@ " + e.fileName + " : " + e.lineNumber + " :\n " +
		  file[timeline_position] + " : " + e.message; console.log(lasterror); }
		if (pauseframes <= 0 || file[timeline_position].includes("pause("))
		  timeline_position++;
		else if (pauseframes > 0)
		  pauseframes--;
		document.getElementById("info").innerHTML = "FRAME: " + timeline_position + " RES: " + window.innerWidth + "X" + window.innerHeight + " PAUSETIME: " + pauseframes + " MODE: " + mode + " MODEANIM: " + mode_animation + " </a><br/><br/><a style='color:red'>" + lasterror.replace("\n","<br/>");
		if (snd_music !== null)
      snd_music.volume = (mode > 0);
    /*var noexpire = "; expires=Thu, 31 Dec 2038 11:59:59 UTC; ";
    document.cookie = "score=" + score + ";combo=" + combo +
    ";multi=" + multi + ";mouse_y=" + mouse_y + ";nether_up=" +
    nether_up + ";nether_lose=" + nether_lose + ";hyper_up=" +
    hyper_up + ";hyoer_lose=" + hyper_lose + ";mega_multi=" +
    mega_multi + ";mega_lose=" + mega_lose
    /*score
    combo
    multi
    mouse_y
    nether_up
    nether_lose
    hyper_up
    hyper_lose
    mega_multi
    mega_lose*/
		snd_beat_miss.volume = volume
		snd_beat_nether.volume = volume
		snd_pause.volume = volume
		snd_unpause.volume = volume
		snd_mode_up.volume = volume
		snd_mode_down.volume = volume
		snd_beat_hyper_hit[1].volume = volume
		snd_beat_hyper_hit[2].volume = volume
		snd_beat_hyper_hit[3].volume = volume
		snd_beat_hyper_hit[4].volume = volume
		snd_beat_hyper_hit[5].volume = volume
  }
}
