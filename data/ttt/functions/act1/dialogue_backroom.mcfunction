execute if entity @s[scores={dialoguetime=21}] run stopsound @a master custom.act3.backroom.lights
execute if entity @s[scores={dialoguetime=21}] if entity @a[tag=backroomp,team=p,scores={y=15..19}] run scoreboard players set @s dialoguetime 0

execute if entity @a[tag=backroomp,team=p,scores={y=15..19}] run scoreboard players add @s dialoguetime 1
execute if entity @s[scores={dialoguetime=1}] as @a[tag=backroomp,team=p] at @s run playsound custom.act3.backroom.lights master @s ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=1}] as @e[type=armor_stand,tag=backrooment,limit=1] at @s run playsound custom.act3.backroom.chase.static master @a[tag=backroomp,team=p] ~ ~ ~ 1000
execute if entity @s[scores={dialoguetime=5}] as @e[type=armor_stand,tag=backrooment,limit=1] at @s run playsound custom.act3.backroom.chase.static master @a[tag=backroomp,team=p] ~ ~ ~ 1000
execute if entity @s[scores={dialoguetime=9}] as @e[type=armor_stand,tag=backrooment,limit=1] at @s run playsound custom.act3.backroom.chase.static master @a[tag=backroomp,team=p] ~ ~ ~ 1000
execute if entity @s[scores={dialoguetime=13}] as @e[type=armor_stand,tag=backrooment,limit=1] at @s run playsound custom.act3.backroom.chase.static master @a[tag=backroomp,team=p] ~ ~ ~ 1000
execute if entity @s[scores={dialoguetime=17}] as @e[type=armor_stand,tag=backrooment,limit=1] at @s run playsound custom.act3.backroom.chase.static master @a[tag=backroomp,team=p] ~ ~ ~ 1000
#execute if entity @s[scores={dialoguetime=21}] as @e[type=armor_stand,tag=backrooment,limit=1] at @s run playsound custom.act3.backroom.chase.static master @a[tag=backroomp,team=p] ~ ~ ~ 1000

execute as @e[type=armor_stand,tag=backrooment,limit=1] at @s if entity @a[tag=backroomp,team=p,scores={y=15..19}] run tp @s ~ ~ ~ facing entity @p[tag=backroomp,team=p,scores={y=15..19}]
execute as @e[type=armor_stand,tag=backrooment,limit=1] at @s if entity @a[tag=backroomp,team=p,scores={y=15..19}] run tp @s ^ ^ ^0.35
execute as @e[type=armor_stand,tag=backrooment,limit=1] at @s if entity @a[tag=backroomp,team=p,scores={y=15..19},distance=0..5] run tp @s ^ ^ ^0.25

execute as @e[type=armor_stand,tag=backrooment,limit=1] at @s run execute as @p[tag=backroomp,team=p,distance=0..1] at @s run function ttt:act1/jumpscare

effect give @a[tag=backroomp,team=p,scores={y=15..21},nbt={Health:20.0f}] resistance 1 2 true
effect give @a[tag=backroomp,team=p,scores={y=15..21},nbt={Health:20.0f}] instant_damage 1 3 true