# after deathtime

execute unless entity @s[scores={acttimer=-200}] run tellraw @a {"text":"Respawned!","color":"green"}

scoreboard players set @a deathreason 0
effect clear @a invisibility
scoreboard players set @s deathtime 0
scoreboard players set @s acttimer 0
gamemode adventure @a[team=!s]
gamemode spectator @a[team=s]
clear @a
tag @a remove deadverify
title @a reset
title @a title {"text":"The Troll Trifecta","color":"yellow","bold":true}
execute if entity @s[scores={act=1}] run title @a subtitle {"text":"Act 1 - The Troll Village","color":"green"}
execute if entity @s[scores={act=2}] run title @a subtitle {"text":"Act 2 - Cold Rollback","color":"yellow"}
execute if entity @s[scores={act=2..}] run advancement grant @a only ttt:act1
execute if entity @s[scores={act=3}] run title @a subtitle {"text":"Act 3 - Mistrustful Magmas","color":"red"}
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1000
execute as @e[tag=p100play] at @s run data merge entity @s {CustomNameVisible:1b}
tag @s remove silentdeath

execute if entity @s[scores={act=1,actpart=..2,fnf_haswgun=1}] as @a[team=p,scores={hp=1..}] run function ttt:act1/respawn_with_wgun
execute if entity @s[scores={act=1,fnf_actprog=..4,fnf_seentails=1..}] run schedule function ttt:act1/tails_spawntext 50t replace
execute if entity @s[scores={act=1,actpart=3}] unless entity @s[scores={fnf_actprog=..4,fnf_seentails=1..}] run schedule function ttt:act1/act2_teasertext 50t replace
execute if entity @s[scores={act=2,cr_seensans=1..}] run schedule function ttt:act2/security_help_particles 50t replace
execute if entity @s[scores={act=2,cr_seentails=3..}] run function ttt:act2/respawn_with_shoes

execute unless score @s st_xmas matches 1 run scoreboard objectives setdisplay sidebar deathvis
execute if score @s st_xmas matches 1 run function ttt:xmas/respawn_with_gifts

#execute unless entity @s[scores={acttimer=-200}] if predicate ttt:10ch run title @a[scores={deathvis=3..}] actionbar {"text":"If you're stuck, use the walkthrough in the inventory!","color":"green"}

#advancement revoke @a from minecraft:adventure/root
#advancement revoke @a from minecraft:story/root
#advancement revoke @a from minecraft:nether/root
#advancement revoke @a from minecraft:husbandry/root
advancement grant @a only ttt:root
advancement grant @a only ttt:progression-invis
advancement grant @a only ttt:bonus-invis
advancement grant @a only ttt:secret-invis