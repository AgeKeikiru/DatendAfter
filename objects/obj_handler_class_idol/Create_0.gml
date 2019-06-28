/// @description Insert description here
// You can write your code in this editor

event_inherited();

name = "Idol";
desc = "Charismatic performers that make a show out of every battle. Focused on support, Idols use flashy techniques and hype to boost the abilities of their allies.";
cName = "IDOL_" + string(global.cid++);

ms_name = "Stage Presence+";
ms_desc = "Increase time before Hype begins to fall by Lv*0.02 seconds.";
//ms_icon

ss_name = "ACC+ (s)";
ss_desc = "Slightly increase base Accuracy.";
//ss_icon
ss_toolTip = "ACC: +!";
ss_rate = .5;

stat_pup_base = 5;
stat_pup_rate = 1;

stat_cheer_base = 2.5;
stat_cheer_rate = .5;

stat_ts_base = 35;
stat_ts_rate = 5;

stat_gf_base = 1.5;
stat_gf_rate = -.1;

#region //tier 1

    var
    _ix = 0,
    _iy = 0;

    grd_skillName[# _ix,_iy] = "EVA+";
    grd_skillDesc[# _ix,_iy] = "Increase base Evasion.";
    grd_skillTooltip[# _ix,_iy] = "EVA: +!";
    grd_skillRate[# _ix,_iy] = stat_fineStatRate;
    
    _iy++;
    
    grd_skillName[# _ix,_iy] = "Hype Meter";
    grd_skillDesc[# _ix,_iy] = "[Stance Act] Generate Hype and Aggro by attacking to use special actions. Lowers over time.";
    grd_skillTooltip[# _ix,_iy] = "Gain Rate: !%";
    grd_skillRate[# _ix,_iy] = .0001 + (.000 * CANARY);
    grd_skillAct[# _ix,_iy] = instance_create_depth(0,0,0,obj_handler_act_idol_hype);
    
    _iy++;
    
    grd_skillName[# _ix,_iy] = "MISC+";
    grd_skillDesc[# _ix,_iy] = "Increase base Misc.";
    grd_skillTooltip[# _ix,_iy] = "MISC: +!";
    grd_skillRate[# _ix,_iy] = stat_fineStatRate;

#endregion

#region //tier 2

    _ix++;
    _iy = 0;

    grd_skillName[# _ix,_iy] = "Hyper Pickup";
    grd_skillDesc[# _ix,_iy] = "[2 Hype] Cure an ally's ailments/debuffs. Aggro transfer.";
    grd_skillTooltip[# _ix,_iy] = "Duration: !sec";
    grd_skillAct[# _ix,_iy] = instance_create_depth(0,0,0,obj_handler_act_idol_hPickup);
    
    _iy++;
    
    grd_skillName[# _ix,_iy] = "Hype-Boost Teamwork";
    grd_skillDesc[# _ix,_iy] = "Increase Hype gain when attacking alongside an ally.";
    grd_skillTooltip[# _ix,_iy] = "Gain: +!%";
    grd_skillRate[# _ix,_iy] = .2;
    
    _iy++;
    
    grd_skillName[# _ix,_iy] = "Hyper Pep-Talk";
    grd_skillDesc[# _ix,_iy] = "[1+ Hype] Heal an ally based on hype used. Brief Aggro transfer.";
    grd_skillTooltip[# _ix,_iy] = "Conversion Rate: x!";
    grd_skillRate[# _ix,_iy] = 100;
    grd_skillAct[# _ix,_iy] = instance_create_depth(0,0,0,obj_handler_act_idol_hPep);

#endregion

#region //tier 3

    _ix++;
    _iy = 0;

    grd_skillName[# _ix,_iy] = "Hyper Cheer";
    grd_skillDesc[# _ix,_iy] = "[1+ Hype] Boost an ally's stats, duration based on how much Hype was used. Aggro transfer.";
    grd_skillTooltip[# _ix,_iy] = "Duration: !sec";
    grd_skillAct[# _ix,_iy] = instance_create_depth(0,0,0,obj_handler_act_idol_hCheer);
    
    _iy++;
    
    grd_skillName[# _ix,_iy] = "Hype-Boost Adrenaline";
    grd_skillDesc[# _ix,_iy] = "Slowly gain Hype while HP is below a certain amount.";
    grd_skillTooltip[# _ix,_iy] = "HP Threshold: !%";
    grd_skillRate[# _ix,_iy] = .12;
    
    _iy++;
    
    grd_skillName[# _ix,_iy] = "Hyper One-More";
    grd_skillDesc[# _ix,_iy] = "[4 Hype] Revive an ally. Brief inverse Aggro transfer.";
    grd_skillTooltip[# _ix,_iy] = "Power: !";
    grd_skillRate[# _ix,_iy] = 50;
    grd_skillAct[# _ix,_iy] = instance_create_depth(0,0,0,obj_handler_act_idol_hOne);

#endregion

#region //tier 4

    _ix++;
    _iy = 0;

    grd_skillName[# _ix,_iy] = "Live Defamation";
    grd_skillDesc[# _ix,_iy] = "Greatly increases Aggro and Hype.";
    grd_skillTooltip[# _ix,_iy] = "Aggro: +!";
    grd_skillRate[# _ix,_iy] = 1;
    grd_skillAct[# _ix,_iy] = instance_create_depth(0,0,0,obj_handler_act_idol_defame);
    
    _iy++;
    
    grd_skillName[# _ix,_iy] = "Hyper Grand Finale";
    grd_skillDesc[# _ix,_iy] = "[5+ Hype] Drain hype to greatly increase all allies' Speed and negate EN cost.";
    grd_skillTooltip[# _ix,_iy] = "Drain Rate: !/sec";
    grd_skillAct[# _ix,_iy] = instance_create_depth(0,0,0,obj_handler_act_idol_finale);
    
    _iy++;
    
    grd_skillName[# _ix,_iy] = "Taunting Strike";
    grd_skillDesc[# _ix,_iy] = "A difficult Melee attack to land, but generates large Hype if it hits.";
    grd_skillTooltip[# _ix,_iy] = "Accuracy: !";
    grd_skillAct[# _ix,_iy] = instance_create_depth(0,0,0,obj_handler_act_idol_tStrike);

#endregion