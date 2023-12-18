item replace entity @s weapon.mainhand with chain{CustomModelData:145}
tp @e[tag=gameai,tag=green] 1 26 100
scoreboard players operation @s am_ai_timespent = @e[type=villager,tag=green,limit=1] am_ai_timespent