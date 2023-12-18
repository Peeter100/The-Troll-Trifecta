scoreboard players add @s am_susscore 15
execute if score @s am_blackoutkills matches 4.. unless entity @e[type=marker,tag=amhost,tag=blackoutnotify] run scoreboard players add @s am_susscore 32
scoreboard players set @s am_helpmeter 1
tellraw @a [{"text":"- noone saw you fix any sabotages","color":"white"}]
execute at @p[tag=amplayer] run playsound custom.act2.thud master @a ~ ~ ~ 1000