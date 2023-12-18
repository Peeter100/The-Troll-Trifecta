scoreboard players add @s am_susscore 4
tellraw @a [{"text":"- ignoring crisis sabotages","color":"white"}]
execute at @p[tag=amplayer] run playsound custom.act2.thud master @a ~ ~ ~ 1000