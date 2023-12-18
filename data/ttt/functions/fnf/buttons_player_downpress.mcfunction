item replace entity @e[type=armor_stand,tag=bfnotebutton,tag=downbutton,limit=1] weapon.mainhand with redstone{CustomModelData:22}
execute if entity @s[scores={fnf_hd_d=..1}] if entity @e[type=armor_stand,tag=bfarrow,tag=downarrow,distance=0..1] run function ttt:fnf/hitreg_down_player
scoreboard players set @s[tag=!jackhit] fnf_hd_d 4