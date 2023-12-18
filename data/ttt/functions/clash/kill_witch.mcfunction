scoreboard players set @s cr_witalive 200
scoreboard players operation @s cr_witalive /= @s playercount
scoreboard players operation @s cr_score += @s cr_witalive
scoreboard players remove @s cr_witspawned 1
scoreboard players remove @s[scores={dialoguetime=..50}] dialoguetime 30
execute if entity @s[scores={cr_score=25000..}] run advancement grant @a only ttt:challenge
kill @e[type=skeleton]