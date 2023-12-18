scoreboard players set @s cr_hogalive 150
scoreboard players operation @s cr_hogalive /= @s playercount
scoreboard players operation @s cr_score += @s cr_hogalive
scoreboard players remove @s cr_hogspawned 1
scoreboard players remove @s[scores={dialoguetime=..50}] dialoguetime 10
execute if entity @s[scores={cr_score=25000..}] run advancement grant @a only ttt:challenge