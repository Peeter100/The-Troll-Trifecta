# am_gamescore1 == killed spider
# am_gamescore2 == got bush 1
# am_gamescore3 == got bush 2
# am_gamescore4 == lava fish sequence
# am_gamescore5 == bobber in lava

execute as @a[tag=amplayer,nbt=!{Fire:-20s}] at @s if block ~ ~ ~ lava run effect give @s instant_damage 1 0 true

effect give @a[scores={food=..7}] saturation 1 0 true
fill 31 34 141 30 34 141 oak_fence_gate[open=false] replace oak_fence_gate[open=true]
scoreboard players add @s[scores={am_gametimer=..9998}] am_gametimer 1

execute if entity @s[scores={am_gametimer=11,am_seentails=1}] run scoreboard players set @s am_gametimer 784

execute if score @s am_gametimer matches 30..1004 run function ttt:amogus/minigames/id3/tick_dialogue

execute if entity @s[scores={am_gametimer=1293,am_gamescore1=1,am_gamescore4=0}] at @e[tag=tailshead] if entity @a[tag=amplayer,distance=0..6] run function ttt:amogus/minigames/id3/tails_tip1
execute if entity @s[scores={am_gametimer=1293}] run scoreboard players set @s am_gametimer 1292

execute if entity @s[scores={am_gametimer=1342}] run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"There's some lava and netherrack over there,","color":"gold"}]
execute if entity @s[scores={am_gametimer=1390}] run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"so maybe you can find some in the lava!","color":"gold"}]

execute if entity @s[scores={am_gametimer=1634,am_gamescore1=1,am_gamescore2=1,am_gamescore3=1,am_gamescore4=0}] at @e[tag=tailshead] if entity @a[tag=amplayer,distance=0..7] run function ttt:amogus/minigames/id3/tails_tip2
execute if entity @s[scores={am_gametimer=1634}] run scoreboard players set @s am_gametimer 1633

execute if entity @s[scores={am_gametimer=1292..1693}] at @e[tag=tailshead] if entity @a[tag=amplayer,nbt={Inventory:[{id:"minecraft:quartz",Count:10b}]},distance=0..4.5] run function ttt:amogus/minigames/id3/tails_give
execute if entity @s[scores={am_gametimer=1292..1693}] at @e[tag=tailshead] if entity @e[type=item,nbt={Item:{id:"minecraft:quartz",Count:10b}},distance=0..4.5] run function ttt:amogus/minigames/id3/tails_give
execute if entity @s[scores={am_gametimer=1693}] run scoreboard players set @s am_gametimer 1692

execute if entity @s[scores={am_gametimer=1714}] run function ttt:amogus/minigames/id3/task_complete

execute if entity @s[scores={am_gamescore1=0}] unless entity @e[tag=eventspider] run function ttt:amogus/minigames/id3/kill_spider
execute if entity @s[scores={am_gamescore2=0}] positioned 33 34 145 unless block ~ ~ ~ dead_bush run function ttt:amogus/minigames/id3/cut_bush
execute if entity @s[scores={am_gamescore2=0}] unless block 33 34 145 dead_bush run scoreboard players set @s am_gamescore2 1
execute if entity @s[scores={am_gamescore3=0}] positioned 29 34 149 unless block ~ ~ ~ dead_bush run function ttt:amogus/minigames/id3/cut_bush
execute if entity @s[scores={am_gamescore3=0}] unless block 29 34 149 dead_bush run scoreboard players set @s am_gamescore3 1

execute as @a[tag=amplayer,nbt={OnGround:1b}] at @s if block ~ ~-0.1 ~ magma_block run function ttt:act1/magma_death
execute as @a[tag=amplayer,nbt={OnGround:1b}] at @s if block ~ ~-0.1 ~0.3 magma_block if block ~ ~-0.1 ~ #ttt:passable run function ttt:act1/magma_death
execute as @a[tag=amplayer,nbt={OnGround:1b}] at @s if block ~ ~-0.1 ~-0.3 magma_block if block ~ ~-0.1 ~ #ttt:passable run function ttt:act1/magma_death
execute as @a[tag=amplayer,nbt={OnGround:1b}] at @s if block ~0.3 ~-0.1 ~ magma_block if block ~ ~-0.1 ~ #ttt:passable run function ttt:act1/magma_death
execute as @a[tag=amplayer,nbt={OnGround:1b}] at @s if block ~-0.3 ~-0.1 ~ magma_block if block ~ ~-0.1 ~ #ttt:passable run function ttt:act1/magma_death
execute as @a[tag=amplayer,nbt={OnGround:1b}] at @s if block ~-0.3 ~-0.1 ~0.3 magma_block if block ~ ~-0.1 ~ #ttt:passable run function ttt:act1/magma_death

execute as @a[tag=amplayer,scores={x=18..22,y=21..23,z=156..163}] at @s run function ttt:amogus/minigames/id3/arachnophobia
execute as @a[tag=amplayer,scores={x=18..22,y=24,z=156..158}] at @s run function ttt:amogus/minigames/id3/arachnophobia

execute unless entity @e[type=fishing_bobber] if entity @s[scores={am_gamescore5=1,am_gamescore4=2}] run function ttt:amogus/minigames/id3/fish_more_quartz
execute unless entity @e[type=fishing_bobber] if entity @s[scores={am_gamescore5=1,am_gamescore4=1}] run function ttt:amogus/minigames/id3/fish_quartz
execute unless entity @e[type=fishing_bobber] if entity @s[scores={am_gamescore5=1,am_gamescore4=0}] run function ttt:amogus/minigames/id3/fish_magma
execute unless entity @e[type=fishing_bobber] if entity @s[scores={am_gamescore5=1}] run scoreboard players set @s am_gamescore5 0
execute at @e[type=fishing_bobber] if block ~ ~ ~ lava run scoreboard players set @s am_gamescore5 1

execute as @e[type=magma_cube,tag=magmac] at @s unless entity @s[tag=cease] run particle flame ~ ~0.1 ~ 0 0 0 0 1 normal @a
execute as @e[type=magma_cube,tag=magmac] at @s unless entity @s[tag=cease] run effect give @a[tag=amplayer,distance=0..2] instant_damage 1 100 true
execute as @e[type=magma_cube,tag=magmac,nbt={OnGround:1b}] at @s unless entity @s[tag=cease] run data merge entity @s {HasVisualFire:0b}
execute as @e[type=magma_cube,tag=magmac,nbt={OnGround:1b}] at @s unless entity @s[tag=cease] run tag @s add cease

execute as @e[tag=tpnpchead,tag=!dontlook] at @s anchored eyes run tp @s ~ ~ ~ facing entity @p[tag=amplayer] eyes
execute unless score @s am_gametimer matches 683..784 as @e[type=armor_stand,tag=tpnpchead,tag=!dontlook] run function ttt:update_head_pose
scoreboard players add @e[type=armor_stand,tag=tailsbody] npcbodytp 1
execute as @e[type=armor_stand,tag=tailsbody,scores={npcbodytp=10..}] at @s run tp @s @e[type=armor_stand,tag=tailshead,limit=1]
scoreboard players set @e[type=armor_stand,tag=tailsbody,scores={npcbodytp=10..}] npcbodytp 0