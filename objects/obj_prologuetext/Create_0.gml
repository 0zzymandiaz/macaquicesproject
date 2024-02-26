/// @description Sequencias, texto e variáveis

audio_group_load(audiodub)

//escurecer a tela
blackin = layer_sequence_create("escurecer",0,0,sqc_blackin);
blackout = layer_sequence_create("escurecer",0,0,sqc_blackout);

layer_sequence_pause(blackout);

spark = part_system_create_layer("particulas",false);

// variávis de fala
digitar = 0;
fala = 0;
off = 0;
cabo = 0;
final = 0;

///criar e pausar as sequencias

	seqcStand = layer_sequence_create("stand",0,0,sqc_stand);
	seqcScreens =layer_sequence_create("telas",0,0,sqc_telas);
	
	layer_sequence_pause(seqcStand);
	layer_sequence_pause(seqcScreens);
	
	cabo = layer_sprite_create("Assets_1",0,0,bg_cable);
	layer_sprite_speed(cabo,0);

/// Lista da ordem de nomes
actualspeak = [
"Dr. Bindaco",
"Dr. Bindaco",
"Dr. Rangel",
"Dr. Bindaco",
"Dr. Rangel",
"Dr. Bindaco",
"Dr. Rangel",
"Dr. Rangel",
"Dr. Bindaco",
"Dr. Bindaco",
"Dr. Rangel",
"Dr. Bindaco",
"Dr. Rangel",
"Dr. Rangel",
"Dr. Bindaco",
"Dr. Bindaco",
"Dr. Bindaco",
"Dr. Rangel",
"Dr. Rangel",
"Dr. Bindaco",
"Dr. Rangel",
"Dr. Rangel",
"Dr. Bindaco",
"Dr. Rangel",
0
]

///lista das falas
textlist = [
///Bindaco 0
"...",
///Dr. Bindaco
"Vamos lá, falta pouco. Geolocalizador?",
///Dr. Rangel
"Check!",
///Dr. Bindaco
"Analisador de carbono?",
///Dr. Rangel
"Check!",
///Dr. Bindaco
"Esterilizador?",
///Dr. Rangel
"Check! Eu calibrei bem. Não podemos arriscar levar uma doença perigosa",
"para uma época em que não existe vacina.",
///Dr. Bindaco
"Ok. Frigobar!",
"Espere, por que colocou isso na lista?",
///Dr. Rangel
"Ué, vamos pro passado sem levar um lanchinho?",
///Dr. Bindaco
"ah, tá bem... Esse é o último item, tudo sob conforme?",
///Dr. Rangel
"Você lembrou de trancar o quarto do Eureka né?",
"Ele está meio esquisito depois que o D.I.D.E foi implantado.",
///Dr. Bindaco
"É, parece que ao invés de elevar a sua inteligência, o D.I.D.E se tornou ",
"uma consciência á parte. Uma espécie de grilo falante digital.",
///Dr. Bindaco
"Não era você que iria trancar á jaula dele hoje?",
///Dr. Rangel
"Não, não. Foi outro dia que eu tranquei.",
///Dr. Rangel
"Espera, aquele é o Eureka?!",
///Dr. Bindaco
"Rápido! Desligue a máquina!!",
///Dr. Rangel
"EUREKAAA, NAAAAAAAO!!!!",
0
]




