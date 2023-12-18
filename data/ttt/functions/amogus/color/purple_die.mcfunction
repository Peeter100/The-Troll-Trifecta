item replace entity @s weapon.mainhand with chain{CustomModelData:175}
tp @e[tag=gameai,tag=purple] 15 26 93
scoreboard players operation @s am_ai_timespent = @e[type=villager,tag=purple,limit=1] am_ai_timespent