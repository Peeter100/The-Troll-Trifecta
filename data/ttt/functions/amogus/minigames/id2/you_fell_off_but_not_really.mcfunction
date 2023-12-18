scoreboard players add @s am_gametimer 700
execute if score @s am_gametimer matches 2110.. run scoreboard players set @s am_gametimer 2109
tellraw @a {"text":"You fell off! (-35s)","color":"red"}
effect give @a[tag=amplayer] instant_damage 1 0 true
execute at @p[tag=amplayer] run playsound custom.act3.sonic.death master @a ~ ~ ~ 1000