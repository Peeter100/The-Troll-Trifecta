execute unless entity @e[type=armor_stand,tag=shadowbody] run function ttt:act2/arena_encounter/spawn
execute as @a[team=p,scores={x=..-56,z=..70}] at @s run function ttt:act2/arena_encounter/tick_player

execute as @e[type=armor_stand,tag=bfhead] at @s if entity @a[team=p,distance=0..8] anchored eyes run tp @s ~ ~ ~ facing entity @p[team=p] eyes
execute as @e[type=armor_stand,tag=bfhead] at @s unless entity @a[team=p,distance=0..8] run tp @s ~ ~ ~ 96 0
scoreboard players add @e[type=armor_stand,tag=bfbody] npcbodytp 1

execute as @e[type=armor_stand,tag=gfhead] at @s if entity @a[team=p,scores={z=..27},distance=0..8] anchored eyes run tp @s ~ ~ ~ facing entity @p[team=p] eyes
execute as @e[type=armor_stand,tag=gfhead] at @s unless entity @a[team=p,scores={z=..27},distance=0..8] run tp @s ~ ~ ~ 95 15


execute if entity @a[team=p,scores={x=-62..-58,y=30..32,z=26..30}] as @e[type=armor_stand,tag=bfhead,tag=!talkedto] at @s run function ttt:act2/arena_encounter/bf
#execute if entity @a[team=p,scores={x=-73..-70,y=31..34,z=57..60}] as @e[type=armor_stand,tag=shadowhead,tag=!talkedto] at @s run function ttt:act2/arena_encounter/shadow
execute if entity @a[team=p,scores={x=-76..-73,y=32,z=56..59},nbt={OnGround:1b}] as @e[type=armor_stand,tag=shadowhead,tag=!talkedto] at @s run function ttt:act2/arena_encounter/shadow

execute if entity @a[team=p,scores={x=-60..-59,y=30..32,z=29..31}] positioned -59 31 30 unless entity @s[scores={d2=1}] run function ttt:diamond_hunt/d2

execute as @e[type=armor_stand,tag=arenanpchead] run function ttt:update_head_pose
execute as @e[type=armor_stand,tag=arenanpcbody,scores={npcbodytp=10..}] at @s run tp @s @e[type=armor_stand,tag=arenanpchead,limit=1,sort=nearest]
scoreboard players set @e[type=armor_stand,tag=arenanpcbody,scores={npcbodytp=10..}] npcbodytp 0