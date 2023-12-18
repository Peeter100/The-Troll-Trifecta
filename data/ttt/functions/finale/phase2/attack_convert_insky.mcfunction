scoreboard players operation @s f3_attackid = @e[type=armor_stand,tag=watcherhead,limit=1,sort=random] npcbodytp
tag @a remove trollgetarget

execute if score @s f3_attackid matches 4.. run scoreboard players remove @s f3_attackid 4
execute if score @s f3_bosstakenhp matches ..-50 run scoreboard players set @s f3_attackid 4

execute if score @s f3_attackid matches 0 run function ttt:finale/phase2/attack_idle_convert
execute if score @s f3_attackid matches 1 run function ttt:finale/phase2/attack_bossfire_convert
execute if score @s f3_attackid matches 2 run function ttt:finale/phase2/attack_p100fire_convert
execute if score @s f3_attackid matches 3 run function ttt:finale/phase2/attack_groundjump_convert
execute if score @s f3_attackid matches 4 run function ttt:finale/phase2/attack_flybash_convert