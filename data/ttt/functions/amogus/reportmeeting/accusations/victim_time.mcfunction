scoreboard players add @s am_susscore 10
tellraw @a [{"text":"- you were most often seen with the victim","color":"white"}]
execute at @p[tag=amplayer] run playsound custom.act2.thud master @a ~ ~ ~ 1000