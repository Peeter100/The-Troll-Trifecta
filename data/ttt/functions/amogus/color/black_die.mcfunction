item replace entity @s weapon.mainhand with chain{CustomModelData:195}
tp @e[tag=gameai,tag=black] 8 26 93
scoreboard players operation @s am_ai_timespent = @e[type=villager,tag=black,limit=1] am_ai_timespent