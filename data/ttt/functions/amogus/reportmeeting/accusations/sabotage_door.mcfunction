scoreboard players add @s am_susscore 6
scoreboard players set @s am_usednearby 3
tellraw @a [{"text":"- doors always seem to close around you","color":"white"}]
execute at @p[tag=amplayer] run playsound custom.act2.thud master @a ~ ~ ~ 1000