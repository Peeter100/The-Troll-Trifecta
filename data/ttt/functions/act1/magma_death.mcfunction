execute unless entity @s[scores={deathreason=32}] run stopsound @a master
execute unless entity @s[scores={deathreason=32}] run scoreboard players set @s deathreason 4
execute unless entity @s[scores={deathreason=32}] run playsound minecraft:entity.player.hurt_on_fire master @a ~ ~ ~ 1000
execute unless entity @s[scores={deathreason=32}] run particle flame ~ ~.5 ~ .3 .3 .3 0 100 force @a
execute unless entity @s[scores={deathreason=32}] run particle lava ~ ~ ~ .3 0 .3 0 4 force @a
execute unless entity @s[scores={deathreason=32}] run kill @s