clear @s carrot_on_a_stick{thunderflower:1b}
summon lightning_bolt
particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a
scoreboard players set @s deathreason 37
scoreboard players set @s rc 0
kill @s