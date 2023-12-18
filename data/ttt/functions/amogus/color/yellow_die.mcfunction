item replace entity @s weapon.mainhand with chain{CustomModelData:125}
tp @e[tag=gameai,tag=yellow] 8 26 100
scoreboard players operation @s am_ai_timespent = @e[type=villager,tag=yellow,limit=1] am_ai_timespent