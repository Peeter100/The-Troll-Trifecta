tag @s add amogdead
tag @s remove amogalive
tag @s add amogdeadnotleveled

particle block redstone_block ~ ~1 ~ .1 0 .1 0 100 force @a
execute as @e[type=marker,tag=sv,limit=1] if score @s am_sabid matches 3 run scoreboard players add @s am_blackoutkills 1
execute if entity @e[type=marker,tag=sv,scores={am_blackoutkills=3..,am_sabid=3}] run tag @e[type=marker,tag=amhost,tag=!blackoutdid] add blackoutnotify
# scoreboard players set @s npcbodytp 1

# stores where the body died
scoreboard players operation @s am_ai_location = @e[type=marker,tag=sv,limit=1] am_location

# end game
execute store result score @e[type=marker,tag=sv,limit=1] am_crewmates if entity @e[type=armor_stand,tag=amogalive]
execute as @e[type=marker,tag=sv,limit=1] if score @s am_crewmates matches ..1 run function ttt:amogus/victory

execute unless entity @e[type=marker,tag=amhost,tag=hasvisioncasted] run function ttt:amogus/ai/player/force_check_raycast
execute as @e[type=villager,tag=amogai,tag=cansee] at @s run function ttt:amogus/ai/player/noticed_murder
execute as @e[type=villager,tag=amogai,distance=0..30] if score @s am_ai_location = @e[type=marker,tag=sv,limit=1] am_location run tag @s add witness_location

function ttt:amogus/ai/dead_bodies/force_check_raycast
execute as @e[type=marker,tag=sv,limit=1] if entity @s[scores={am_played=2..,am_crewmates=2..,am_level=..9}] run schedule function ttt:amogus/levelling/crime_rate_schedule 60t replace

execute if entity @s[tag=orange] run function ttt:amogus/color/orange_die
execute if entity @s[tag=yellow] run function ttt:amogus/color/yellow_die
execute if entity @s[tag=lime] run function ttt:amogus/color/lime_die
execute if entity @s[tag=green] run function ttt:amogus/color/green_die
execute if entity @s[tag=cyan] run function ttt:amogus/color/cyan_die
execute if entity @s[tag=pink] run function ttt:amogus/color/pink_die
execute if entity @s[tag=purple] run function ttt:amogus/color/purple_die
execute if entity @s[tag=white] run function ttt:amogus/color/white_die
execute if entity @s[tag=black] run function ttt:amogus/color/black_die

schedule function ttt:amogus/crewmate_killai 3t replace