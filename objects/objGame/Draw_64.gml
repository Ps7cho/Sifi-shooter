/// @description debug draw

draw_text_ext_transformed_color(10, 7, "FPS = " + string(fps_real), 3, 300, 1, 1, 0, c_white, c_white, c_gray, c_gray, 1);

if(!global.debug) {exit;}

 if window_get_fullscreen()
      {
	  draw_text_ext_transformed_color(10, 25, "Fullscreen is ON", 3, 300, 1, 1, 0, c_white, c_white, c_gray, c_gray, .5);
      }
   else
      {
	  draw_text_ext_transformed_color(10, 25, "Fullscreen is OFF", 3, 300, 1, 1, 0, c_white, c_white, c_gray, c_gray, .5);
      }
	  
	  