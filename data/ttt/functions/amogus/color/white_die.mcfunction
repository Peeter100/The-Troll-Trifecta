item replace entity @s weapon.mainhand with chain{CustomModelData:185}
tp @e[tag=gameai,tag=white] 8 21 93
scoreboard players operation @s am_ai_timespent = @e[type=villager,tag=white,limit=1] am_ai_timespent