item replace entity @s weapon.mainhand with chain{CustomModelData:165}
tp @e[tag=gameai,tag=pink] 15 21 93
scoreboard players operation @s am_ai_timespent = @e[type=villager,tag=pink,limit=1] am_ai_timespent