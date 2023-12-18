scoreboard players add @s am_susscore 10
tellraw @a [{"text":"- you were seen doing tasks near a body","color":"white"}]
execute at @p[tag=amplayer] run playsound custom.act2.thud master @a ~ ~ ~ 1000
tag @e[type=villager,tag=amogai,tag=taskreport] remove taskreport