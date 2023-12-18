scoreboard players remove @s f3_stunmeter 1
scoreboard players operation @s f3_attackid = @e[type=armor_stand,tag=watcherhead,limit=1,sort=random] npcbodytp
tag @a remove trollgetarget
kill @e[type=marker,tag=bbolt]

execute if score @s f3_attackid matches 5.. run scoreboard players set @s f3_attackid 1

execute at 00000001-0000-0000-0000-000000000000 if entity @a[team=p,distance=..10] if predicate ttt:75ch run tag @s add playerclose
execute if score @s f3_attackid matches 0 unless entity @s[tag=playerclose] run function ttt:finale/phase1/attack_idle_convert
execute if score @s f3_attackid matches 0 if entity @s[tag=playerclose] run function ttt:finale/phase1/attack_walking_convert
execute if score @s f3_attackid matches 1 run function ttt:finale/phase1/attack_walking_convert
execute if score @s f3_attackid matches 2 run function ttt:finale/phase1/attack_charging_convert
execute if score @s f3_attackid matches 3 run function ttt:finale/phase1/attack_jumping_convert
execute if score @s f3_attackid matches 4 unless entity @s[tag=playerclose] run function ttt:finale/phase1/attack_thunder_convert
execute if score @s f3_attackid matches 4 if entity @s[tag=playerclose] run function ttt:finale/phase1/attack_charging_convert
tag @s remove playerclose