var
SV_menu = ds_stack_top(global.stk_menu);

global.itemBuy = global.buyLst[| SV_menu.menu_y];

scr_menu_confirmWindow("message/confirm/..","Unequip " + global.itemBuy.name + " from " + global.itemBuy.src.name + "?",scr_menu_party_equip_swapEquip,scr_menu_backNoRefresh);