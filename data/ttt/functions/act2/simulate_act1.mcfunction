execute as @a[x=-2,y=30,z=38,dx=4,dy=0,dz=1.5,team=p,nbt={OnGround:1b}] at @s if block 0 30 39 grass run function ttt:act1/lava_pit_armorstand
execute as @a[team=p,scores={x=-6..6,y=30..31,z=40..42}] at @s run function ttt:act1/strict_block_policy

execute as @a[team=p,scores={x=-8,y=30,z=43..49}] at @s unless block ~ 31 ~ #ttt:full_passable run tp @s ~-1 ~ ~

execute if entity @s[scores={acttimer=0}] unless block 0 30 49 oak_log if block 0 35 49 oak_log run scoreboard players set @s acttimer 1
execute if entity @s[scores={acttimer=0}] unless block 0 31 49 oak_log if block 0 35 49 oak_log run scoreboard players set @s acttimer 3
execute if entity @s[scores={acttimer=0}] unless block 0 32 49 oak_log if block 0 35 49 oak_log run scoreboard players set @s acttimer 5

execute as @a[team=p,scores={y=32..,z=54..56},nbt={OnGround:1b}] at @s run function ttt:act1/plank_poison

execute as @a[team=p,nbt={OnGround:1b}] at @s if block ~ ~-0.1 ~ spruce_planks run function ttt:act1/plank_poison
execute as @a[team=p,nbt={OnGround:1b}] at @s if block ~ ~-0.1 ~0.3 spruce_planks run function ttt:act1/plank_poison
execute as @a[team=p,nbt={OnGround:1b}] at @s if block ~ ~-0.1 ~-0.3 spruce_planks run function ttt:act1/plank_poison

execute as @a[team=p,x=-6,y=30,z=54,dx=12,dy=1,dz=0,scores={x=-6..6}] at @s unless block ~ 30 55 jungle_fence run function ttt:act1/plank_spawn

execute if entity @a[x=-11,y=30,z=55,dx=22,dy=0,dz=4.6,team=p,nbt={OnGround:1b}] if block 7 30 60 grass run function ttt:act1/lava_pit

execute if entity @a[x=3,y=34,z=44,dx=2,dy=1,dz=2,team=p] positioned 4 32 45 unless block ~ ~ ~ iron_block run function ttt:act1/ironblock
execute if entity @a[x=-5,y=34,z=44,dx=2,dy=1,dz=2,team=p] positioned -4 32 45 unless block ~ ~ ~ iron_block run function ttt:act1/ironblock

execute as @a[team=p,nbt={Inventory:[{id:"minecraft:poppy"}]}] at @s run function ttt:act1/item_steal

execute if entity @a[x=13,y=30,z=48,dx=0,dy=2,dz=8,team=p] if entity @s[scores={acttimer=0..27}] run function ttt:act2/wrong_cave