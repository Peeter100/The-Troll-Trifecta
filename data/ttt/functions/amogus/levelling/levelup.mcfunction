tellraw @a [{"text":"You leveled up to ","color":"#FF9B9B"},{"text":"Impostor Level ","color":"#FF0000"},{"score":{"name":"@s","objective":"am_level"},"color":"yellow"},{"text":"!\n"},{"text":">> New unlocks:","color":"green","bold":true}]
#scoreboard players set @s am_lvl_xp 0
#scoreboard players add @s am_lvl_xpreq 225
scoreboard players operation @s am_lvl_xp -= @s am_lvl_xpreq
scoreboard players add @s am_lvl_xpreq 375

execute if score @s am_level matches 2 run scoreboard players set @s am_lvl_crewmates 8
execute if score @s am_level matches 2 run tellraw @a {"text":"- all of your next games will start with 8 crewmates! (9 -> 8)","color":"green"}

execute if score @s am_level matches 3 run scoreboard players set @s am_lvl_killcool 500
execute if score @s am_level matches 3 run scoreboard players set @s am_lvl_sabcool 500
execute if score @s am_level matches 3 run tellraw @a {"text":"- kill cooldown reduction (30s -> 25s)\n- crisis sabotage cooldown reduction (30s -> 25s)","color":"green"}

execute if score @s am_level matches 4 run scoreboard players set @s am_lvl_crewmates 7
execute if score @s am_level matches 4 run tellraw @a {"text":"- all of your next games will start with 7 crewmates! (8 -> 7)","color":"green"}

execute if score @s am_level matches 5 run scoreboard players set @s am_lvl_sabcool 400
execute if score @s am_level matches 5 run tellraw @a {"text":"- crisis sabotage cooldown reduction (25s -> 20s)","color":"green"}

execute if score @s am_level matches 6 run scoreboard players set @s am_lvl_killcool 400
execute if score @s am_level matches 6 run tellraw @a [{"text":"- kill cooldown reduction (25s -> 20s)\n- permanent ","color":"green"},{"text":"Speed I","color":"#BDE2FF"},{"text":" effect"}]

execute if score @s am_level matches 7 run scoreboard players set @s am_lvl_crewmates 6
execute if score @s am_level matches 7 run tellraw @a {"text":"- all of your next games will start with 6 crewmates! (7 -> 6)","color":"green"}

execute if score @s am_level matches 8 run scoreboard players set @s am_lvl_killcool 300
execute if score @s am_level matches 8 run scoreboard players set @s am_lvl_sabcool 300
execute if score @s am_level matches 8 run tellraw @a {"text":"- kill cooldown reduction (20s -> 15s)\n- crisis sabotage cooldown reduction (20s -> 15s)","color":"green"}

execute if score @s am_level matches 9 run scoreboard players set @s am_lvl_sabcool 200
execute if score @s am_level matches 9 run tellraw @a {"text":"- crisis sabotage cooldown reduction (15s -> 10s)","color":"green"}

execute if score @s am_level matches 10 run scoreboard players set @s am_lvl_crewmates 5
execute if score @s am_level matches 10 run tellraw @a [{"text":"- all of your next games will start with 5 crewmates! (6 -> 5)","color":"green"},{"text":"\nYou have reached max Impostor Level!","bold":true}]

execute at @r[tag=amplayer] run playsound entity.player.levelup master @a ~ ~ ~ 1000
execute at @r[tag=amplayer] run playsound entity.vindicator.celebrate master @a ~ ~ ~ 1000