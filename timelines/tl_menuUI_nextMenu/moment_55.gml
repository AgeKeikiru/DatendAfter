instance_destroy(obj_handler_menu_parent);
ds_stack_clear(global.stk_menu);

if(!title){
	switch(menuNext){
		case 0: //requestMission
			scr_menu_nextMenu_mission();
			
			break;
		case 2: //market
			scr_menu_nextMenu_market();
			
			break;
		case 3: //chip lab
			scr_menu_nextMenu_lab();
			
			break;
			
		case 4: //social
			scr_menu_nextMenu_social();
			
			break;
		default:
			scr_save();
			scr_menu_nextMenu_home();
			
			break;
		
	}
}else{
	scr_menu_title();
}

if(ds_stack_size(global.stk_menuDia) == 0){
	transTgt = 1;
}else{
	with obj_handler_menu_parent{
		visible = false;
	}
}