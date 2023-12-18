item replace entity @e[type=armor_stand,tag=bfnotebutton,tag=rightbutton,limit=1] weapon.mainhand with redstone{CustomModelData:24}
execute if entity @s[scores={fnf_hd_r=..1}] if entity @e[type=armor_stand,tag=bfarrow,tag=rightarrow,distance=0..1] run function ttt:fnf/hitreg_right_player
scoreboard players set @s[tag=!jackhit] fnf_hd_r 4