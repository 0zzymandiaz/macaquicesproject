/// @description mudanças de animação


//Draw Event

if state = Pstate.Free {
	if on_ground = false
	{
		if (sign(vspd) < 0)
		{
			sprite_index = spr_monkejump;
			if sprite_index = spr_monkejump
			{
				if image_index = image_number - 1{
				image_speed = 0;
			}
		}
	};
 if (vspd >= 0)
	{
		sprite_index = spr_monkefall;
		}
	}
};

draw_self()
