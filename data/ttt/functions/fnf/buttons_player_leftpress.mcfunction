item replace entity @e[type=armor_stand,tag=bfnotebutton,tag=leftbutton,limit=1] weapon.mainhand with redstone{CustomModelData:21}
execute if entity @s[scores={fnf_hd_l=..1}] if entity @e[type=armor_stand,tag=bfarrow,tag=leftarrow,distance=0..1] run function ttt:fnf/hitreg_left_player
scoreboard players set @s[tag=!jackhit] fnf_hd_l 4