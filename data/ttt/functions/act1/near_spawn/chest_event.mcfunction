execute as @a[x=-2,y=30,z=38,dx=4,dy=0,dz=1.5,team=p,nbt={OnGround:1b}] at @s if block 0 30 39 grass run function ttt:act1/lava_pit_armorstand
execute as @a[team=p,scores={x=-6..6,y=30..31,z=40..42}] at @s run function ttt:act1/strict_block_policy

#execute if entity @s[scores={acttimer=0}] unless block 0 30 49 oak_log if block 0 35 49 oak_log run scoreboard players set @s acttimer 10
#execute if entity @s[scores={acttimer=0}] unless block 0 31 49 oak_log if block 0 35 49 oak_log run scoreboard players set @s acttimer 12
#execute if entity @s[scores={acttimer=0}] unless block 0 32 49 oak_log if block 0 35 49 oak_log run scoreboard players set @s acttimer 14

execute as @a[team=p,nbt={OnGround:1b}] at @s run function ttt:act1/near_spawn/tick_player_onground

execute if entity @a[x=3,y=34,z=44,dx=2,dy=1,dz=2,team=p] positioned 4 32 45 unless block ~ ~ ~ iron_block run function ttt:act1/ironblock
execute if entity @a[x=-5,y=34,z=44,dx=2,dy=1,dz=2,team=p] positioned -4 32 45 unless block ~ ~ ~ iron_block run function ttt:act1/ironblock

execute as @a[team=p,x=-6,y=30,z=54,dx=12,dy=1,dz=0,scores={x=-6..6}] at @s unless block ~ 30 55 jungle_fence run function ttt:act1/plank_spawn
execute as @a[team=p,x=-6,y=30,z=55,dx=12,dy=0,dz=0,nbt={OnGround:1b}] at @s if block ~ 29 55 grass_block run setblock ~ 29 55 magenta_glazed_terracotta[facing=north]

## CHEST EVENT CODE
# Cool shit (the chest flies away lmao)

execute if score @s dialoguetime matches ..248 run scoreboard players add @s dialoguetime 1
execute if score @s dialoguetime matches 8 run function ttt:act1/near_spawn/chest_event_start
execute if score @s dialoguetime matches 15 positioned 3 30 50 run function ttt:act1/near_spawn/lightning_strike
execute if score @s dialoguetime matches 22 positioned -3 30 53 run function ttt:act1/near_spawn/lightning_strike
execute if score @s dialoguetime matches 29 positioned -3 30 45 run function ttt:act1/near_spawn/lightning_strike
execute if score @s dialoguetime matches 36 run function ttt:act1/near_spawn/tree_break

execute if score @s dialoguetime matches 70 run playsound custom.t2s.trollge.chest_event master @a 0 30 48 1000
execute if score @s dialoguetime matches 70 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"LET'S SEE YOU COMPLETE THIS NOW","color":"#942626","font":"trollge"}]

execute if score @s dialoguetime matches 120 as @a at @s run playsound entity.player.levelup master @s ~ ~ ~ 1000
execute if score @s dialoguetime matches 120 run tellraw @a {"text":"TIP: Use the Water Gun!","color":"yellow"}

execute if score @s dialoguetime matches ..249 at @a[team=p,scores={x=-6..6,y=32,z=55}] if block ~ 31 ~ jungle_planks run scoreboard players set @s dialoguetime 250
execute if score @s dialoguetime matches 250 run function ttt:act1/near_spawn/trollge_comment