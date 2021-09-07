currentLoc = global.currentVolume/global.maxVolume*barLength;
draw_set_halign(fa_left);
draw_rectangle_color(anchorX,anchorY,anchorX + currentLoc,anchorY + volBarHeight, c_blue,c_blue,c_blue,c_blue, false);
draw_rectangle_color(anchorX+currentLoc,anchorY,anchorX + barLength,anchorY + volBarHeight, c_red,c_red,c_red,c_red, false);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text(anchorX+currentLoc, anchorY + 2*volBarHeight, string(global.currentVolume));
draw_text(anchorX + barLength/2, anchorY - volBarHeight, "Volume");
draw_sprite(sprite_index,-1,x,y);