/// @description Sistema de diálogos
if(global.pause) exit;


if global.cena > 0{
	digitar += 0.5;
audio_group_set_gain(audiogroup_default,0.2,50);

if digitar >= string_length(textlist[0+fala])+50{

	fala +=1;	
	digitar = 0;
}

switch room{
	
	case stage1_1:
		switch global.cena {
	
	case 1:
		didedialg(0,4,dlg_DIDEfase1_1intro,1)
		instance_create_layer(0,544,"colision",obj_solid)
		with(other) image_xscale = 6;
		break;
		
	case 2:
		didedialg(4,7,dlg_DIDEfase1_1parede,1)
		
		break;
		
	case 3:
		didedialg(7,8,dlg_DIDEtirarpe,0)
		
		break;
		
	case 4:
		didedialg(8,9,dlg_DIDEossosplast,0)
		
		break;
		
	case 5:
		fala = clamp(fala,0,10);
		if fala = 10{
			
			global.cena = 0;
		}
		break;
		
	case 6:
		didedialg(10,11,dlg_DIDEatravessar,0)
		
		break;
		
	case 7:
		didedialg(11,12,dlg_DIDEluztunel,1)
		
		break;
		
	case 8:
		didedialg(0,12,dlg_DIDEluztunel,1)
		
		break;
}
break;
	
case stage1_2:
	switch global.cena{
		case 1:
			didedialg(0,5,dlg_DIDEfase1_2intro,1)
				
		break;
			
		case 2:
			didedialg(5,6,dlg_DIDEprevisao,1)
				
			break;
			
		case 3:
			didedialg(6,7,dlg_DIDEbambupiada,0)
				
		break;
			
		case 4:
			didedialg(7,8,dlg_DIDEacampamento,1)
				
		break;
			
		case 5:
			didedialg(8,9,dlg_DIDEbananeira,0)
				
		break;
			
		case 6:
			didedialg(9,10,dlg_DIDEtarde,0)

		break;
			
		case 7:
			didedialg(10,11,dlg_DIDEpararaios,0)
				
		break;
}
break;

case stage1_3:
	switch global.cena{
		case 1:
			didedialg(0,1,dlg_DIDEmaiscaverna,1)
				
		break;
				
		case 2:
			didedialg(1,2,dlg_DIDEvenerarfogo,0)
					
		break;
				
		case 3:
			didedialg(2,3,dlg_DIDEaustra,0)
					
		break;
				
		case 4:
			didedialg(3,4,dlg_DIDEvamos,0)
					
		break;
				
break; }}

}else{
	audio_group_set_gain(audiogroup_default,1,100);
}