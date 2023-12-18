effect give @s instant_damage 1 100 true
tag @s remove cangetrammed
playsound entity.hoglin.angry master @a ~ ~ ~ 1000
playsound entity.hoglin.angry master @a ~ ~ ~ 1000
playsound entity.hoglin.angry master @a ~ ~ ~ 1000
playsound minecraft:entity.player.big_fall master @a ~ ~ ~ 1000
playsound minecraft:entity.player.big_fall master @a ~ ~ ~ 1000
particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a
scoreboard players set @s deathreason 35
kill @e[tag=dashhoglin]