function ttt:fnf/lyrics_end

scoreboard players set @s fnf_dir_p 0
data merge entity @e[type=armor_stand,tag=peeter1,limit=1] {Pose:{Head:[0f,0f,0f]}}
item replace entity @e[type=armor_stand,tag=gfmain,limit=1] armor.head with redstone{CustomModelData:3}