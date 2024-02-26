/// @description salvar o checkpoint
	ini_open("savefile");

	ini_write_real("eureka","x",x);
	ini_write_real("eureka","y",y);

	ini_close();
	
	instance_destroy(other);