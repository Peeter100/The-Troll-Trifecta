item replace entity @e[type=armor_stand,tag=bfnotebutton,tag=upbutton,limit=1] weapon.mainhand with redstone{CustomModelData:23}
execute if entity @s[scores={fnf_hd_u=..1}] if entity @e[type=armor_stand,tag=bfarrow,tag=uparrow,distance=0..1] run function ttt:fnf/hitreg_up_player
scoreboard players set @s[tag=!jackhit] fnf_hd_u 4