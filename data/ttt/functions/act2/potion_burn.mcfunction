playsound minecraft:entity.player.hurt_on_fire master @a ~ ~ ~ 1000
particle poof ~ ~1 ~ .2 .5 .2 0 25 force @a
particle flame ~ ~1 ~ .3 .5 .3 0 50 force @a
scoreboard players set @s deathreason 24
scoreboard players set @s drinkpotion 0
kill @s