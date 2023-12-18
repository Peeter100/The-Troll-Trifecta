execute unless entity @e[tag=doormarker,scores={npcbodytp=401..}] run scoreboard players set @e[type=marker,tag=sv] am_sabid 0
execute unless entity @e[tag=doormarker,scores={npcbodytp=401..}] as @e[type=marker,tag=sv] at @s unless score @s am_killcool matches 1.. run function ttt:amogus/bossbar_update_name
execute unless entity @e[tag=doormarker,scores={npcbodytp=401..}] if entity @e[type=marker,tag=sv,scores={am_ventid=0,am_sabcool=0}] run function ttt:amogus/slot_enable_sabotages
### playsound custom.amogus.door_open master @a ~ ~ ~ 1000
### title @a actionbar [{"text":"Doors to ","color":"green"},{"selector":"@s"},{"text":" have opened!"}]
execute if entity @s[tag=x] run fill ~-1 ~ ~ ~1 ~2 ~ air
execute if entity @s[tag=z] run fill ~ ~ ~-1 ~ ~2 ~1 air
particle cloud ~ ~1 ~ 1 1 1 0 75 normal @a