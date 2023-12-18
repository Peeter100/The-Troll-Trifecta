item replace entity @s weapon.mainhand with chain{CustomModelData:135}
tp @e[tag=gameai,tag=lime] 8 21 100
scoreboard players operation @s am_ai_timespent = @e[type=villager,tag=lime,limit=1] am_ai_timespent