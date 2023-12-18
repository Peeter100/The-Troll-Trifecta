scoreboard players set @s cr_gobalive 50
scoreboard players operation @s cr_gobalive /= @s playercount
scoreboard players operation @s cr_score += @s cr_gobalive
scoreboard players remove @s cr_gobspawned 1
scoreboard players remove @s[scores={dialoguetime=..50}] dialoguetime 20
execute if entity @s[scores={cr_score=25000..}] run advancement grant @a only ttt:challenge