playsound custom.amogus.door_close master @a ~ ~ ~ 1000
execute unless entity @e[type=marker,tag=amhost,tag=hasvisioncasted] run function ttt:amogus/ai/player/force_check_raycast
execute as @e[type=villager,tag=amogai,tag=cansee,tag=!emergencybutton] at @s unless entity @e[type=armor_stand,tag=amogdead,distance=0..30] run function ttt:amogus/ai/player/noticed_doorclose