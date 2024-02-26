/// @function						didedialg(_falanum,_falaend,_dub,_stop);
/// @param {Real} _falanum			Número onde está o diálogo.
/// @param {Real} _falaend			Número da próxima fala.
/// @param {Asset.GMSound} _dub		Arquivo de áudio a ser ouvido.
/// @param {bool} _stop				Se o player vai ficar parado.

function didedialg(_falanum,_falaend,_dub,_stop)
{	
	
if digitar = 1 and fala = _falanum{
			audio_play_sound(_dub,1,0,1)
			if _stop = 1 obj_monke.state = Pstate.Scene;
		}
		fala = clamp(fala,0,_falaend);
		if fala = _falaend{
			global.cena = 0;
			if _stop = 1 obj_monke.state = Pstate.Free;
		}
}
