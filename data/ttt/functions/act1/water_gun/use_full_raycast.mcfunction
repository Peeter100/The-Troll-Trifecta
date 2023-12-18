particle dust 0.1 0.1 1 1 ~ ~ ~ 0 0 0 0 1 force @a
execute if block ~ ~ ~ spruce_planks run setblock ~ ~ ~ jungle_planks

execute if entity @e[tag=wguntarget,distance=..0.8] run function ttt:act1/water_gun/npc_hit
execute unless entity @s[tag=wgunhit] if entity @e[dx=0,dy=0,dz=0,tag=wguntarget] positioned ~-1 ~-1 ~-1 if entity @e[dx=0,dy=0,dz=0,tag=wguntarget] positioned ~1 ~1 ~1 run function ttt:act1/water_gun/npc_hit

execute unless block ~ ~ ~ #ttt:passable run tag @s add wgunhit
execute if block ~ ~ ~ glass_pane run tag @s add wgunhit

execute if entity @s[tag=wgunhit] run particle poof ^ ^ ^-0.25 .3 .3 .3 0.2 20 force @a
execute if entity @s[tag=wgunhit] run particle falling_water ^ ^ ^-0.25 .3 .3 .3 0 50 force @a

scoreboard players add .wguncast npcbodytp 1
execute unless entity @s[tag=wgunhit] unless score .wguncast npcbodytp matches 61.. positioned ^ ^ ^0.5 run function ttt:act1/water_gun/use_full_raycast