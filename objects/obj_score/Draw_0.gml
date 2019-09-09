var c = c_gray;

draw_text_color(10, 10, "Catch as many coins as you can...before they disappear", c, c, c, c, 1);
draw_text_color(10, 25, "P=Pause R=Reset Left Right Space=Jump", c, c, c, c, 1);

c = c_white;
draw_text_color(10, 50, "Bitcoin:" + string(global.bitcoin) + " Litecoin:" + string(global.litecoin) + "  Level:" + string(global.level), c, c, c, c, 1);
