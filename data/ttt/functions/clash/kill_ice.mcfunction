scoreboard players set @s cr_icealive 100
scoreboard players operation @s cr_icealive /= @s playercount
scoreboard players operation @s cr_score += @s cr_icealive
scoreboard players remove @s cr_icespawned 1
scoreboard players remove @s[scores={dialoguetime=..50}] dialoguetime 35