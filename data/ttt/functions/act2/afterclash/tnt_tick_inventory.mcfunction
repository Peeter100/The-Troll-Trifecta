scoreboard players add @s dialoguetime 1

execute if score @s dialoguetime matches 100 at @r[team=p,tag=hastnt] run playsound custom.act2.beep master @a ~ ~ ~ 1000 1
execute if score @s dialoguetime matches 110 at @r[team=p,tag=hastnt] run playsound custom.act2.beep master @a ~ ~ ~ 1000 1
execute if score @s dialoguetime matches 120 at @r[team=p,tag=hastnt] run playsound custom.act2.beep master @a ~ ~ ~ 1000 1.001
execute if score @s dialoguetime matches 125 at @r[team=p,tag=hastnt] run playsound custom.act2.beep master @a ~ ~ ~ 1000 1.002
execute if score @s dialoguetime matches 130 at @r[team=p,tag=hastnt] run playsound custom.act2.beep master @a ~ ~ ~ 1000 1.004
execute if score @s dialoguetime matches 134 at @r[team=p,tag=hastnt] run playsound custom.act2.beep master @a ~ ~ ~ 1000 1.006
execute if score @s dialoguetime matches 137 at @r[team=p,tag=hastnt] run playsound custom.act2.beep master @a ~ ~ ~ 1000 1.009

execute if score @s dialoguetime matches 140 at @r[team=p,tag=hastnt] run particle explosion_emitter ~ ~1 ~ 0 0 0 0 10 force @a
execute if score @s dialoguetime matches 140 at @r[team=p,tag=hastnt] run playsound entity.generic.explode master @a ~ ~ ~ 1000 1
execute if score @s dialoguetime matches 140 as @r[team=p,tag=hastnt] run scoreboard players set @s deathreason 29
execute if score @s dialoguetime matches 140 as @r[team=p,tag=hastnt] run kill @s