setblock -3 31 261 air destroy
summon lightning_bolt -3 31 261
playsound custom.act2.bozo master @a -3 31 261 1000
weather rain
tag @s add raining
particle explosion_emitter -3 31 261 0 0 0 0 1 force @a
execute if score @s am_seentrollge matches 1.. run scoreboard players set @s dialoguetime 100