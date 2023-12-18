scoreboard players set @s cr_baralive 150
scoreboard players operation @s cr_baralive /= @s playercount
scoreboard players operation @s cr_score += @s cr_baralive
scoreboard players remove @s cr_barspawned 1
scoreboard players remove @s[scores={dialoguetime=..50}] dialoguetime 35
execute if entity @s[scores={cr_score=25000..}] run advancement grant @a only ttt:challenge