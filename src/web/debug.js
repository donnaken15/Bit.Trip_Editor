  if (debug) {
  	var debugee_js_draw = document.getElementById("debugee-js-draw");
    debugee_js_draw.value = draw.toString();
	debugee_js_draw.oninput = function() { draw = new Function(debugee_js_draw.value.substring(16)); }
  }
  else
	  document.getElementById("debugee").style = "display:none;"