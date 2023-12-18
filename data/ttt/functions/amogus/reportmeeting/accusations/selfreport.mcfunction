scoreboard players add @s am_susscore 25
scoreboard players set @s am_selfreports 4
tellraw @a [{"text":"- self-reporting","color":"white"}]
execute at @p[tag=amplayer] run playsound custom.act2.thud master @a ~ ~ ~ 1000