item replace entity @s weapon.mainhand with chain{CustomModelData:115}
tp @e[tag=gameai,tag=orange] 15 21 100
scoreboard players operation @s am_ai_timespent = @e[type=villager,tag=orange,limit=1] am_ai_timespent