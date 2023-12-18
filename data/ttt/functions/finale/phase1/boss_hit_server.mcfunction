execute if score @s f3_stunmeter matches ..-1 run scoreboard players set @s f3_stunmeter 0

execute if score @s f3_stunmeter matches ..7 if predicate ttt:75ch run tag @s add canstun
execute if score @s f3_stunmeter matches 8..20 if predicate ttt:50ch run tag @s add canstun
execute if score @s f3_stunmeter matches 21.. if score @s f3_attackid matches 4 if predicate ttt:50ch run tag @s add canstun
execute if score @s f3_attackid matches 0 run tag @s add canstun

execute if score @s f3_attackid matches 3 run tag @s remove canstun
execute if score @s f3_attackid matches 5 run tag @s remove canstun

execute if entity @s[tag=canstun] run function ttt:finale/phase1/attack_stun_convert
tag @s remove canstun