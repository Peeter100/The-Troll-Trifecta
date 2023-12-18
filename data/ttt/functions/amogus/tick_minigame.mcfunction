# 3040..3049
scoreboard players set @s[scores={acttimer=3049}] acttimer 3040
effect give @a[scores={food=..1}] saturation 1 0 true
execute as @a[tag=amplayer] at @s unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{impostorsuit:1b}}]}] unless entity @s[tag=offhandnoupdate] run function ttt:amogus/minigames/update_offhand_item
execute as @e[type=villager,tag=amogai,nbt=!{Health:100.0f}] at @s run data merge entity @s {Health:100.0f}
execute as @a[tag=!amplayer,team=p] at @s run spectate @p[tag=amplayer]

execute if entity @s[scores={am_killcool=1..,am_gametimer=..10999}] run scoreboard players remove @s am_killcool 1
execute if entity @s[scores={am_sabcool=1..,am_gametimer=..10999}] unless entity @s[scores={am_sabid=1..3}] run scoreboard players remove @s am_sabcool 1
scoreboard players remove @e[type=marker,tag=doormarker,scores={npcbodytp=1..}] npcbodytp 1
execute if entity @s[scores={am_gameimportant=0,am_sabid=1..}] run function ttt:amogus/minigames/tick_handle_sabotage

execute as @e[type=villager,tag=amogai] at @s if entity @s[y=-8,dy=7] run spreadplayers ~ ~ 5 15 under 2 false @s

execute if entity @s[scores={am_gametimer=10000..}] run function ttt:amogus/minigames/tick_afterload
execute if entity @s[scores={am_gametimer=10..9999,am_gameid=12}] run function ttt:amogus/minigames/id12/tick
execute if entity @s[scores={am_gametimer=10..9999,am_gameid=11}] run function ttt:amogus/minigames/id11/tick
execute if entity @s[scores={am_gametimer=10..9999,am_gameid=10}] run function ttt:amogus/minigames/id10/tick
execute if entity @s[scores={am_gametimer=10..9999,am_gameid=9}] run function ttt:amogus/minigames/id9/tick
execute if entity @s[scores={am_gametimer=10..9999,am_gameid=8}] run function ttt:amogus/minigames/id8/tick
execute if entity @s[scores={am_gametimer=10..9999,am_gameid=7}] run function ttt:amogus/minigames/id7/tick
execute if entity @s[scores={am_gametimer=10..9999,am_gameid=6}] run function ttt:amogus/minigames/id6/tick
execute if entity @s[scores={am_gametimer=10..9999,am_gameid=5}] run function ttt:amogus/minigames/id5/tick
execute if entity @s[scores={am_gametimer=10..9999,am_gameid=4}] run function ttt:amogus/minigames/id4/tick
execute if entity @s[scores={am_gametimer=10..9999,am_gameid=3}] run function ttt:amogus/minigames/id3/tick
execute if entity @s[scores={am_gametimer=10..9999,am_gameid=2}] run function ttt:amogus/minigames/id2/tick
execute if entity @s[scores={am_gametimer=10..9999,am_gameid=1}] run function ttt:amogus/minigames/id1/tick
execute if entity @s[scores={am_gametimer=0..9}] run function ttt:amogus/minigames/tick_preload