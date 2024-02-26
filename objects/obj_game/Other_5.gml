/// @description parar a música e deletar o checkpoint
global.pause = false;
audio_group_stop_all(audiodide);
audio_group_stop_all(audiogroup_default);

if file_exists("save_file"){
	
	file_delete("save_file")
}



