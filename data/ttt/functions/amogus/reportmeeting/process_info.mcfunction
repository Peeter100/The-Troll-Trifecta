scoreboard players set @s dialoguetime 400

# fuck you
execute unless score @s am_susscore matches 75.. if entity @e[type=marker,tag=amhost,tag=blackoutnotify] unless entity @a[tag=amplayer,tag=reportee] as @e[type=villager,tag=reportee,limit=1,sort=random] run function ttt:amogus/reportmeeting/blackout_info1
execute unless score @s am_susscore matches 75.. if entity @e[type=marker,tag=amhost,tag=blackoutnotify] if entity @a[tag=amplayer,tag=reportee] as @e[type=armor_stand,tag=amogalive,limit=1,sort=random] run function ttt:amogus/reportmeeting/blackout_info1