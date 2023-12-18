fill -17 32 78 -17 31 80 air destroy
execute at @e[type=tnt,tag=faketnt] run particle explosion_emitter -18 31 79 10 10 10 0 200 force @a
execute at @e[type=tnt,tag=faketnt] run playsound entity.generic.explode master @a -18 31 79 1000
execute at @e[type=tnt,tag=faketnt] run scoreboard players set @a[team=p,distance=0..10] deathreason 23
execute at @e[type=tnt,tag=faketnt] run kill @p[team=p,distance=0..10]
execute at @e[type=tnt,tag=faketnt] run effect give @a[team=p,distance=0..13] instant_damage 1 1 true
execute at @e[type=tnt,tag=faketnt] run effect give @a[team=p,distance=13..16] instant_damage 1 0 true
kill @e[type=tnt]

tellraw @a[tag=hadbow] {"text":"The arrow was destroyed by the explosion!","color":"green"}
execute as @a[tag=hadbow] at @s anchored eyes run particle item arrow ^-.4 ^ ^.2 .1 .1 .1 0 30 normal @a
execute as @a[tag=hadbow] at @s anchored eyes run playsound item.shield.break master @a ~ ~ ~
clear @a arrow
kill @e[type=item]
tag @a remove hadbow
stopsound @a master custom.act2.sans.speech_very_long