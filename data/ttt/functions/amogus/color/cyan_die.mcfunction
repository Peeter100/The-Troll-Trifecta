item replace entity @s weapon.mainhand with chain{CustomModelData:155}
tp @e[tag=gameai,tag=cyan] 1 21 100
scoreboard players operation @s am_ai_timespent = @e[type=villager,tag=cyan,limit=1] am_ai_timespent