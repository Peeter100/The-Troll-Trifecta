# am_gamescore1 == on ground
# am_gamescore2 == stored x
# am_gamescore3 == stored z
# am_gamescore4 == current x
# am_gamescore5 == current z
# am_gamescore6 == plants cut

execute as @a[tag=amplayer,nbt=!{Fire:-20s}] at @s if block ~ ~ ~ lava run effect give @s instant_damage 1 0 true

execute store result score @s am_gamescore4 run data get entity @p[tag=amplayer] Pos[0] 10
execute store result score @s am_gamescore5 run data get entity @p[tag=amplayer] Pos[2] 10

effect give @a[scores={food=..7}] saturation 1 0 true
scoreboard players add @s[scores={am_gametimer=..9998}] am_gametimer 1

execute if entity @s[scores={am_gametimer=11}] run execute as @e[tag=toad,limit=1] at @s run playsound custom.act1.toad master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gametimer=11}] run tellraw @a [{"text":"<","color":"white"},{"text":"Toad","color":"red"},{"text":"> "},{"text":"Oh no!","color":"red"}]
execute if entity @s[scores={am_gametimer=40}] run execute as @e[tag=toad,limit=1] at @s run playsound custom.act1.toad master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gametimer=40}] run tellraw @a [{"text":"<","color":"white"},{"text":"Toad","color":"red"},{"text":"> "},{"text":"The ferns in my yard are growing too large!","color":"red"}]
execute if entity @s[scores={am_gametimer=100}] run execute as @e[tag=toad,limit=1] at @s run playsound custom.act1.toad master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gametimer=100}] run tellraw @a [{"text":"<","color":"white"},{"text":"Toad","color":"red"},{"text":"> "},{"text":"Can you cut them down slightly?","color":"red"}]
execute if entity @s[scores={am_gametimer=100}] run give @a[tag=amplayer] carrot_on_a_stick{display:{Name:'{"text":"Plant Cutters","color":"green","italic":false}',Lore:['{"text":"Right-click while standing in","color":"gray","italic":false}','{"text":"a fern to cut it short.","color":"gray","italic":false}']},CustomModelData:15} 1
execute if entity @s[scores={am_gametimer=120}] run tellraw @a [{"text":""},{"text":"Current Task:\n","color":"yellow","bold":true},{"text":"Cut down the ferns in Toad's yard!","color":"light_purple"},{"text":"\nJumping & Sprinting: ","color":"yellow","italic":true},{"text":"Enabled","color":"green","italic":true}]
execute if entity @s[scores={am_gametimer=120}] run execute as @r[tag=amplayer] at @s run playsound entity.player.levelup master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gametimer=130}] run scoreboard players set @s am_gametimer 129

execute if entity @s[scores={am_gamescore1=0}] run function ttt:amogus/minigames/id8/block_check
execute if entity @s[scores={am_gamescore1=1}] unless score @s am_gamescore2 = @s am_gamescore4 run function ttt:amogus/minigames/id8/block_check
execute if entity @s[scores={am_gamescore1=1}] unless score @s am_gamescore3 = @s am_gamescore5 run function ttt:amogus/minigames/id8/block_check
execute if entity @a[tag=amplayer,nbt={OnGround:1b}] run scoreboard players set @s am_gamescore1 1
execute if entity @a[tag=amplayer,nbt={OnGround:0b}] unless entity @s[scores={am_gamescore1=0}] as @a[tag=amplayer] at @s run fill ~2 42 ~2 ~-2 42 ~-2 air replace fern
execute if entity @a[tag=amplayer,nbt={OnGround:0b}] run scoreboard players set @s am_gamescore1 0
scoreboard players operation @s am_gamescore2 = @s am_gamescore4
scoreboard players operation @s am_gamescore3 = @s am_gamescore5

execute as @a[tag=amplayer,scores={rc=1..,y=42},nbt={OnGround:1b}] at @s if block ~ 42 ~ large_fern run function ttt:amogus/minigames/id8/fern_cut

execute as @a[tag=amplayer] at @s if block ~ ~ ~ lava run effect clear @s jump_boost
execute if entity @s[scores={am_gametimer=129,am_gamescore6=34}] run scoreboard players set @s am_gametimer 131
execute if entity @s[scores={am_gametimer=140}] run function ttt:amogus/minigames/id8/task_complete

execute as @e[tag=tpnpc] at @s anchored eyes run tp @s ~ ~ ~ facing entity @p[tag=amplayer] eyes
execute as @e[tag=tpnpc] run function ttt:update_head_pose
scoreboard players add @e[tag=tpnpchead] npcbodytp 1
execute as @e[tag=tpnpchead,scores={npcbodytp=10..}] at @s run tp @e[tag=tpnpcbody,distance=0..0.25] @s
scoreboard players set @e[tag=tpnpchead,scores={npcbodytp=10..}] npcbodytp 0