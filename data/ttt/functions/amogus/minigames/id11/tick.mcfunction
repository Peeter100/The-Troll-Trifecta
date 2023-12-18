# am_gamescore1 == smell (0 = none, 1 = lemon, 2 = orange)
# am_gamescore2 == prev x
# am_gamescore3 == prev z
# am_gamescore4 == has beaten zombie
# am_gamescore5 == scaled y


execute if entity @a[tag=amplayer,scores={y=22..25,z=60..75}] run scoreboard players set @s am_seensans 3
execute if entity @a[tag=amplayer,scores={y=22..25,z=60..75}] run function ttt:amogus/minigames/id11/task_complete

execute if score @s am_gametimer matches 2000.. run function ttt:amogus/minigames/id11/tick_dialogue_sans
execute if score @s am_gametimer matches ..1099 run function ttt:amogus/minigames/id11/tick_dialogue
execute if score @s am_gametimer matches 1100..1999 run function ttt:amogus/minigames/id11/tick_encounter

execute if score @s am_gamescore1 matches 1 run title @a[nbt=!{SelectedItem:{tag:{hoverwand:1b}}}] actionbar {"text":"YOU SMELL LIKE LEMON","color":"yellow"}
execute if score @s am_gamescore1 matches 2 run title @a[nbt=!{SelectedItem:{tag:{hoverwand:1b}}}] actionbar {"text":"YOU SMELL LIKE ORANGE","color":"gold"}

execute as @e[type=armor_stand,tag=npchead] at @s anchored eyes run tp @s ~ ~ ~ facing entity @p[tag=amplayer] eyes
execute as @e[type=armor_stand,tag=npchead] run function ttt:update_head_pose
scoreboard players add @e[type=armor_stand,tag=npchead] npcbodytp 1
execute as @e[type=armor_stand,tag=npchead,scores={npcbodytp=10..}] at @s run tp @e[tag=npcbody,distance=0..0.25] @s
scoreboard players set @e[type=armor_stand,tag=npchead,scores={npcbodytp=10..}] npcbodytp 0


execute as @a[tag=amplayer,nbt={OnGround:1b},nbt=!{SelectedItem:{tag:{hoverwand:1b}}}] run scoreboard players set @s wand_energy 100
execute as @a[tag=amplayer,nbt={SelectedItem:{tag:{hoverwand:1b}}},scores={wand_energy=1..}] run scoreboard players remove @s wand_energy 2
execute as @a[tag=amplayer,nbt={SelectedItem:{tag:{hoverwand:1b}}},scores={wand_energy=1..}] run effect give @s levitation 1 255 true
execute as @a[tag=amplayer,scores={wand_energy=..0}] run effect clear @s levitation
execute as @a[tag=amplayer,nbt=!{SelectedItem:{tag:{hoverwand:1b}}}] run effect clear @s levitation
execute if score @s am_gamescore1 matches ..0 as @a[tag=amplayer,nbt={Inventory:[{tag:{hoverwand:1b}}]}] run title @s actionbar [{"text":"Wand Energy: ","color":"light_purple","italic":false},{"score":{"name":"@s","objective":"wand_energy"},"color":"dark_purple"},{"text":"%","color":"dark_purple"}]
execute if score @s am_gamescore1 matches 1.. as @a[tag=amplayer,nbt={SelectedItem:{tag:{hoverwand:1b}}}] run title @s actionbar [{"text":"Wand Energy: ","color":"light_purple","italic":false},{"score":{"name":"@s","objective":"wand_energy"},"color":"dark_purple"},{"text":"%","color":"dark_purple"}]