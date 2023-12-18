# am_gamescore1 == speed amp
# am_gamescore2 == timer to kill speed
# am_gamescore3 == remaining time (in seconds)
# am_gamescore4 == score3's sequel to measure change
# am_gamescore5 == easter egg dialogue thingy??

effect give @a[scores={food=..7}] saturation 1 0 true
scoreboard players add @s[scores={am_gametimer=..9998}] am_gametimer 1

execute if entity @a[tag=amplayer,scores={sprinting=1..}] run scoreboard players add @s am_gamescore1 1
execute if entity @a[tag=amplayer,scores={sprinting=1..}] run scoreboard players set @s am_gamescore2 2

execute if entity @a[tag=amplayer,scores={sprinting=0},nbt={OnGround:1b}] run scoreboard players remove @s[scores={am_gamescore2=0..}] am_gamescore2 1
execute if entity @a[tag=amplayer,scores={sneak=1..}] run scoreboard players set @s[scores={am_gamescore2=1..}] am_gamescore2 0
execute if entity @s[scores={am_gamescore2=0}] run effect clear @a[tag=amplayer] speed
execute if entity @s[scores={am_gamescore2=0}] run effect clear @a[tag=amplayer] jump_boost
execute if entity @s[scores={am_gamescore2=0}] run scoreboard players set @s am_gamescore1 0
execute if entity @s[scores={am_gamescore2=0}] run scoreboard players set @s am_gamescore2 -1

execute as @a[tag=amplayer,scores={jump=1..}] at @s run playsound custom.act3.sonic.jump master @a ~ ~ ~ 1000

scoreboard players set @a walking 0
scoreboard players set @a sprinting 0
scoreboard players set @a sneak 0

execute if entity @s[scores={am_gamescore1=0..8}] run effect give @a[tag=amplayer] speed 1 2 true
execute if entity @s[scores={am_gamescore1=9..13}] run effect give @a[tag=amplayer] speed 1 5 true
execute if entity @s[scores={am_gamescore1=14..18}] run effect give @a[tag=amplayer] speed 1 8 true
execute if entity @s[scores={am_gamescore1=19..22}] run effect give @a[tag=amplayer] speed 1 11 true
execute if entity @s[scores={am_gamescore1=23..}] run effect give @a[tag=amplayer] speed 1 14 true

execute if entity @s[scores={am_gamescore1=0..22}] run effect give @a[tag=amplayer] jump_boost 1 0 true
execute if entity @s[scores={am_gamescore1=23..}] run effect give @a[tag=amplayer] jump_boost 1 1 true

execute if entity @s[scores={am_gamescore1=0}] run title @a actionbar [{"text":"Speed: ","color":"green"},{"text":"|||||||","color":"gray"}]
execute if entity @s[scores={am_gamescore1=1..4}] run title @a actionbar [{"text":"Speed: |","color":"green"},{"text":"||||||","color":"gray"}]
execute if entity @s[scores={am_gamescore1=7..8}] run title @a actionbar [{"text":"Speed: ||","color":"green"},{"text":"|||||","color":"gray"}]
execute if entity @s[scores={am_gamescore1=9..12}] run title @a actionbar [{"text":"Speed: |||","color":"yellow"},{"text":"||||","color":"gray"}]
execute if entity @s[scores={am_gamescore1=13..16}] run title @a actionbar [{"text":"Speed: ||||","color":"yellow"},{"text":"|||","color":"gray"}]
execute if entity @s[scores={am_gamescore1=17..20}] run title @a actionbar [{"text":"Speed: |||||","color":"yellow"},{"text":"||","color":"gray"}]
execute if entity @s[scores={am_gamescore1=21..24}] run title @a actionbar [{"text":"Speed: ||||||","color":"red"},{"text":"|","color":"gray"}]
execute if entity @s[scores={am_gamescore1=25..}] run title @a actionbar [{"text":"Speed: |||||||","color":"red"}]

#execute as @e[tag=shadowhead] at @s if entity @a[tag=amplayer,scores={y=26..32}] run tp @s ~ ~ ~ facing entity @p[tag=amplayer] eyes
execute as @e[type=armor_stand,tag=shadowhead] at @s anchored eyes run tp @s ~ ~ ~ facing entity @p[tag=amplayer] eyes
execute as @e[type=armor_stand,tag=shadowhead] unless entity @s[tag=stop] run function ttt:finale/npc_look_shadow
scoreboard players add @e[type=armor_stand,tag=shadowbody] npcbodytp 1
execute as @e[type=armor_stand,tag=shadowbody,scores={npcbodytp=5..}] at @s run tp @s @e[type=armor_stand,tag=shadowhead,limit=1]
scoreboard players set @e[type=armor_stand,tag=shadowbody,scores={npcbodytp=5..}] npcbodytp 0

execute as @e[type=armor_stand,tag=shadowbody,tag=!forcegun] at @s if entity @a[tag=amplayer,distance=0..13,scores={y=26..32}] unless entity @s[nbt={HandItems:[{tag:{CustomModelData:12}},{tag:{CustomModelData:18}}]}] run item replace entity @s weapon.offhand with gold_ingot{CustomModelData:18}
execute as @e[type=armor_stand,tag=shadowbody,tag=!forcegun] at @s unless entity @a[tag=amplayer,distance=0..13,scores={y=26..32}] unless entity @s[nbt={HandItems:[{tag:{CustomModelData:12}},{tag:{CustomModelData:17}}]}] run item replace entity @s weapon.offhand with gold_ingot{CustomModelData:17}

execute as @a[tag=amplayer,scores={x=56..60,y=32,z=73..77},nbt={OnGround:1b}] at @s run function ttt:amogus/minigames/id2/head_land
#execute as @a[tag=amplayer,scores={y=21},nbt={OnGround:1b}] at @s run function ttt:amogus/minigames/id2/you_fell_off
execute if entity @a[tag=amplayer,scores={y=21},nbt={OnGround:1b}] run function ttt:amogus/minigames/id2/you_fell_off
execute as @e[tag=shadowbody,tag=!forcegun] at @s run execute as @r[tag=amplayer,scores={rc=1..,y=29},distance=0..3,nbt=!{SelectedItem:{tag:{damnemerald:1b}}}] at @s run function ttt:amogus/minigames/id2/wrong_emerald
execute as @e[tag=shadowbody,tag=!forcegun] at @s run execute as @r[tag=amplayer,scores={rc=1..,y=29},distance=0..3,nbt={SelectedItem:{tag:{damnemerald:1b}}}] at @s run function ttt:amogus/minigames/id2/correct_emerald
execute as @r[tag=amplayer] at @s if entity @e[type=item,x=56,dx=4,y=29,dy=2,z=73,dz=4,nbt={Item:{tag:{fakeemerald:1b}}}] unless entity @e[tag=shadowbody,tag=forcegun] run function ttt:amogus/minigames/id2/wrong_emerald
execute as @r[tag=amplayer] at @s if entity @e[type=item,x=56,dx=4,y=29,dy=2,z=73,dz=4,nbt={Item:{tag:{damnemerald:1b}}}] unless entity @e[tag=shadowbody,tag=forcegun] run function ttt:amogus/minigames/id2/correct_emerald

execute if entity @s[scores={am_gametimer=11}] run item replace entity @e[tag=shadowbody] weapon.offhand with gold_ingot{CustomModelData:18}
execute if entity @s[scores={am_gametimer=11}] run execute as @e[tag=shadowhead] at @s run playsound custom.t2s.shadow.emerald_intro master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gametimer=20}] run tellraw @a [{"text":"<","color":"white"},{"text":"Shadow","color":"#C42626"},{"text":"> "},{"text":"Where's that DAMN fourth chaos emerald?!","color":"#C42626"}]
execute if entity @s[scores={am_gametimer=90}] run function ttt:amogus/minigames/id2/enable_task

execute if entity @s[scores={am_gametimer=100..2099}] run scoreboard players set @s am_gamescore3 2110
execute if entity @s[scores={am_gametimer=100..2099}] run scoreboard players operation @s am_gamescore3 -= @s am_gametimer
execute if entity @s[scores={am_gametimer=100..2099}] run scoreboard players operation @s am_gamescore3 /= @s am_secondworth
execute if entity @s[scores={am_gametimer=100..2099}] run scoreboard players add @s am_gamescore3 1
execute if entity @s[scores={am_gametimer=100..2099}] unless score @s am_gamescore4 = @s am_gamescore3 run title @a title {"text":""}
execute if entity @s[scores={am_gametimer=100..2099}] unless score @s am_gamescore4 = @s am_gamescore3 run title @a subtitle [{"score":{"name":"@s","objective":"am_gamescore3"},"color":"yellow"},{"text":"s"}]
execute if entity @s[scores={am_gametimer=100..2099}] unless score @s am_gamescore4 = @s am_gamescore3 run execute as @r[tag=amplayer] at @s run playsound block.note_block.hat master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gametimer=100..2099}] run scoreboard players operation @s am_gamescore4 = @s am_gamescore3

execute if entity @s[scores={am_gametimer=2110}] run function ttt:amogus/minigames/id2/rage
execute if entity @s[scores={am_gametimer=2114}] run tellraw @a [{"text":"<","color":"white"},{"text":"Shadow","color":"#C42626"},{"text":"> "},{"text":"CHAOS-","color":"#C42626"}]
execute if entity @s[scores={am_gametimer=2137}] run function ttt:amogus/minigames/id2/blast

execute if entity @s[scores={am_gametimer=2110..2136}] run particle dust 1 0 0 1 58 30 75 .5 .75 .5 0 2 force @a
#execute if entity @s[scores={am_gametimer=2110..2155}] run particle dust 1 0 0 1 58 30 75 .35 .5 .35 0 1 force @a
#execute if entity @s[scores={am_gametimer=2110..2155}] run particle dust 1 0 0 0.5 58 30 75 .35 .5 .35 0 2 normal @a

execute if entity @s[scores={am_gametimer=3032}] run function ttt:amogus/minigames/id2/task_complete

execute if entity @a[tag=amplayer,scores={x=28..32,y=32..36,z=82..96}] run function ttt:amogus/minigames/id2/easter_egg

# execute as @a[tag=ignoreinventory] at @s unless entity @s[nbt={Inventory:[{Slot:9b,tag:{locked:1b}},{Slot:10b,tag:{locked:1b}},{Slot:11b,tag:{locked:1b}},{Slot:12b,tag:{locked:1b}},{Slot:13b,tag:{locked:1b}},{Slot:14b,tag:{locked:1b}},{Slot:15b,tag:{locked:1b}},{Slot:16b,tag:{locked:1b}},{Slot:17b,tag:{locked:1b}},{Slot:18b,tag:{locked:1b}},{Slot:19b,tag:{locked:1b}},{Slot:20b,tag:{locked:1b}},{Slot:21b,tag:{locked:1b}},{Slot:22b,tag:{locked:1b}},{Slot:23b,tag:{locked:1b}},{Slot:24b,tag:{damnemerald:1b}},{Slot:25b,tag:{locked:1b}},{Slot:26b,tag:{locked:1b}},{Slot:27b,tag:{locked:1b}},{Slot:28b,tag:{locked:1b}},{Slot:29b,tag:{locked:1b}},{Slot:30b,tag:{locked:1b}},{Slot:31b,tag:{locked:1b}},{Slot:32b,tag:{locked:1b}},{Slot:33b,tag:{locked:1b}},{Slot:34b,tag:{locked:1b}},{Slot:35b,tag:{locked:1b}}]}] run function ttt:amogus/minigames/id2/alt_inventory
execute as @a[tag=ignoreinventory] at @s unless entity @s[nbt={Inventory:[{Slot:9b,tag:{locked:1b}},{Slot:10b,tag:{locked:1b}},{Slot:11b,tag:{locked:1b}},{Slot:12b,tag:{locked:1b}},{Slot:13b,tag:{locked:1b}},{Slot:14b,tag:{locked:1b}},{Slot:15b,tag:{locked:1b}},{Slot:16b,tag:{locked:1b}},{Slot:17b,tag:{locked:1b}},{Slot:18b,tag:{locked:1b}},{Slot:19b,tag:{locked:1b}},{Slot:20b,tag:{locked:1b}},{Slot:21b,tag:{locked:1b}},{Slot:22b,tag:{locked:1b}},{Slot:23b,tag:{locked:1b}},{Slot:24b,tag:{locked:1b}},{Slot:25b,tag:{locked:1b}},{Slot:26b,tag:{locked:1b}},{Slot:27b,tag:{locked:1b}},{Slot:28b,tag:{locked:1b}},{Slot:29b,tag:{locked:1b}},{Slot:30b,tag:{locked:1b}},{Slot:31b,tag:{locked:1b}},{Slot:32b,tag:{locked:1b}},{Slot:33b,tag:{damnemerald:1b}},{Slot:34b,tag:{locked:1b}},{Slot:35b,tag:{locked:1b}}]}] run function ttt:amogus/minigames/id2/alt_inventory